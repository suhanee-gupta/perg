resource "aws_iam_user" "adm_grace_patel" {
  name = "axvel-1bmofe-adm-grace.patel"
}

resource "aws_iam_user_login_profile" "adm_grace_patel" {
  user                    = aws_iam_user.adm_grace_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_grace_patel__platform_admins" {
  user   = aws_iam_user.adm_grace_patel.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_leo_sato" {
  name = "axvel-1bmofe-adm-leo.sato"
}

resource "aws_iam_user_login_profile" "adm_leo_sato" {
  user                    = aws_iam_user.adm_leo_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_leo_sato__platform_admins" {
  user   = aws_iam_user.adm_leo_sato.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "alice_chen" {
  name = "axvel-1bmofe-alice.chen"
}

resource "aws_iam_user_login_profile" "alice_chen" {
  user                    = aws_iam_user.alice_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_chen__support_2_devs" {
  user   = aws_iam_user.alice_chen.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "alice_chen__base_readonly" {
  user       = aws_iam_user.alice_chen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_cohen" {
  name = "axvel-1bmofe-alice.cohen"
}

resource "aws_iam_user_login_profile" "alice_cohen" {
  user                    = aws_iam_user.alice_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_cohen__billing_4_devs" {
  user   = aws_iam_user.alice_cohen.name
  groups = [aws_iam_group.billing_4_devs.name]
}

resource "aws_iam_user" "alice_davis" {
  name = "axvel-1bmofe-alice.davis"
}

resource "aws_iam_user_login_profile" "alice_davis" {
  user                    = aws_iam_user.alice_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_davis__auth_5_devs" {
  user   = aws_iam_user.alice_davis.name
  groups = [aws_iam_group.auth_5_devs.name]
}

resource "aws_iam_user_group_membership" "alice_davis__web_3_analysts" {
  user   = aws_iam_user.alice_davis.name
  groups = [aws_iam_group.web_3_analysts.name]
}

resource "aws_iam_user" "alice_garcia" {
  name = "axvel-1bmofe-alice.garcia"
}

resource "aws_iam_user_login_profile" "alice_garcia" {
  user                    = aws_iam_user.alice_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_garcia__mobile_6_devs" {
  user   = aws_iam_user.alice_garcia.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "alice_garcia__base_readonly" {
  user       = aws_iam_user.alice_garcia.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_larsen" {
  name = "axvel-1bmofe-alice.larsen"
}

resource "aws_iam_user_group_membership" "alice_larsen__ml_2_devs" {
  user   = aws_iam_user.alice_larsen.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user" "alice_larsen8951" {
  name = "axvel-1bmofe-alice.larsen8951"
}

resource "aws_iam_user_login_profile" "alice_larsen8951" {
  user                    = aws_iam_user.alice_larsen8951.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_larsen8951__api_5_devs" {
  user   = aws_iam_user.alice_larsen8951.name
  groups = [aws_iam_group.api_5_devs.name]
}

resource "aws_iam_user" "alice_larsen9674" {
  name = "axvel-1bmofe-alice.larsen9674"
}

resource "aws_iam_user_login_profile" "alice_larsen9674" {
  user                    = aws_iam_user.alice_larsen9674.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_larsen9674__api_5_devs" {
  user   = aws_iam_user.alice_larsen9674.name
  groups = [aws_iam_group.api_5_devs.name]
}

resource "aws_iam_user" "alice_lopez" {
  name = "axvel-1bmofe-alice.lopez"
}

resource "aws_iam_user_group_membership" "alice_lopez__ml_5_devs" {
  user   = aws_iam_user.alice_lopez.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "alice_lopez9883" {
  name = "axvel-1bmofe-alice.lopez9883"
}

resource "aws_iam_user_login_profile" "alice_lopez9883" {
  user                    = aws_iam_user.alice_lopez9883.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_lopez9883__infra_6_devs" {
  user   = aws_iam_user.alice_lopez9883.name
  groups = [aws_iam_group.infra_6_devs.name]
}

resource "aws_iam_user" "alice_novak" {
  name = "axvel-1bmofe-alice.novak"
}

resource "aws_iam_user_group_membership" "alice_novak__support_devs" {
  user   = aws_iam_user.alice_novak.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "alice_okafor" {
  name = "axvel-1bmofe-alice.okafor"
}

resource "aws_iam_user_group_membership" "alice_okafor__infra_4_devs" {
  user   = aws_iam_user.alice_okafor.name
  groups = [aws_iam_group.infra_4_devs.name]
}

resource "aws_iam_user" "alice_okafor817" {
  name = "axvel-1bmofe-alice.okafor817"
}

resource "aws_iam_user_login_profile" "alice_okafor817" {
  user                    = aws_iam_user.alice_okafor817.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_okafor817__ml_5_devs" {
  user   = aws_iam_user.alice_okafor817.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "alice_patel" {
  name = "axvel-1bmofe-alice.patel"
}

resource "aws_iam_user_login_profile" "alice_patel" {
  user                    = aws_iam_user.alice_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_patel__notifications_5_devs" {
  user   = aws_iam_user.alice_patel.name
  groups = [aws_iam_group.notifications_5_devs.name]
}

resource "aws_iam_user_group_membership" "alice_patel__notifications_5_analysts" {
  user   = aws_iam_user.alice_patel.name
  groups = [aws_iam_group.notifications_5_analysts.name]
}

resource "aws_iam_user" "alice_patel3779" {
  name = "axvel-1bmofe-alice.patel3779"
}

resource "aws_iam_user_login_profile" "alice_patel3779" {
  user                    = aws_iam_user.alice_patel3779.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_patel3779__notifications_5_devs" {
  user   = aws_iam_user.alice_patel3779.name
  groups = [aws_iam_group.notifications_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "alice_patel3779__base_readonly" {
  user       = aws_iam_user.alice_patel3779.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_reddy" {
  name = "axvel-1bmofe-alice.reddy"
}

resource "aws_iam_user_login_profile" "alice_reddy" {
  user                    = aws_iam_user.alice_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_reddy__search_4_devs" {
  user   = aws_iam_user.alice_reddy.name
  groups = [aws_iam_group.search_4_devs.name]
}

resource "aws_iam_user" "alice_sato" {
  name = "axvel-1bmofe-alice.sato"
}

resource "aws_iam_user_login_profile" "alice_sato" {
  user                    = aws_iam_user.alice_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_sato__search_6_analysts" {
  user   = aws_iam_user.alice_sato.name
  groups = [aws_iam_group.search_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "alice_sato__base_readonly" {
  user       = aws_iam_user.alice_sato.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_silva" {
  name = "axvel-1bmofe-alice.silva"
}

resource "aws_iam_user_login_profile" "alice_silva" {
  user                    = aws_iam_user.alice_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_silva__search_7_devs" {
  user   = aws_iam_user.alice_silva.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "alice_silva__base_readonly" {
  user       = aws_iam_user.alice_silva.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_smith" {
  name = "axvel-1bmofe-alice.smith"
}

resource "aws_iam_user_group_membership" "alice_smith__infra_devs" {
  user   = aws_iam_user.alice_smith.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "alice_smith3518" {
  name = "axvel-1bmofe-alice.smith3518"
}

resource "aws_iam_user_login_profile" "alice_smith3518" {
  user                    = aws_iam_user.alice_smith3518.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_smith3518__search_3_devs" {
  user   = aws_iam_user.alice_smith3518.name
  groups = [aws_iam_group.search_3_devs.name]
}

resource "aws_iam_user" "alice_tanaka" {
  name = "axvel-1bmofe-alice.tanaka"
}

resource "aws_iam_user_group_membership" "alice_tanaka__ml_devs" {
  user   = aws_iam_user.alice_tanaka.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user_group_membership" "alice_tanaka__web_4_analysts" {
  user   = aws_iam_user.alice_tanaka.name
  groups = [aws_iam_group.web_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "alice_tanaka__base_readonly" {
  user       = aws_iam_user.alice_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_chen" {
  name = "axvel-1bmofe-amit.chen"
}

resource "aws_iam_user_group_membership" "amit_chen__mobile_analysts" {
  user   = aws_iam_user.amit_chen.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user_group_membership" "amit_chen__auth_analysts" {
  user   = aws_iam_user.amit_chen.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user" "amit_chen3010" {
  name = "axvel-1bmofe-amit.chen3010"
}

resource "aws_iam_user_login_profile" "amit_chen3010" {
  user                    = aws_iam_user.amit_chen3010.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_chen3010__mobile_7_devs" {
  user   = aws_iam_user.amit_chen3010.name
  groups = [aws_iam_group.mobile_7_devs.name]
}

resource "aws_iam_user" "amit_ivanov" {
  name = "axvel-1bmofe-amit.ivanov"
}

resource "aws_iam_user_login_profile" "amit_ivanov" {
  user                    = aws_iam_user.amit_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_ivanov__data_2_devs" {
  user   = aws_iam_user.amit_ivanov.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user" "amit_jones" {
  name = "axvel-1bmofe-amit.jones"
}

resource "aws_iam_user_login_profile" "amit_jones" {
  user                    = aws_iam_user.amit_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_jones__ml_5_analysts" {
  user   = aws_iam_user.amit_jones.name
  groups = [aws_iam_group.ml_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "amit_jones__base_readonly" {
  user       = aws_iam_user.amit_jones.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_khan" {
  name = "axvel-1bmofe-amit.khan"
}

resource "aws_iam_user_login_profile" "amit_khan" {
  user                    = aws_iam_user.amit_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_khan__mobile_analysts" {
  user   = aws_iam_user.amit_khan.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "amit_kim" {
  name = "axvel-1bmofe-amit.kim"
}

resource "aws_iam_user_login_profile" "amit_kim" {
  user                    = aws_iam_user.amit_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_kim__web_devs" {
  user   = aws_iam_user.amit_kim.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "amit_larsen" {
  name = "axvel-1bmofe-amit.larsen"
}

resource "aws_iam_user_login_profile" "amit_larsen" {
  user                    = aws_iam_user.amit_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_larsen__growth_6_devs" {
  user   = aws_iam_user.amit_larsen.name
  groups = [aws_iam_group.growth_6_devs.name]
}

resource "aws_iam_user" "amit_lopez" {
  name = "axvel-1bmofe-amit.lopez"
}

resource "aws_iam_user_login_profile" "amit_lopez" {
  user                    = aws_iam_user.amit_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_lopez__data_3_devs" {
  user   = aws_iam_user.amit_lopez.name
  groups = [aws_iam_group.data_3_devs.name]
}

resource "aws_iam_user" "amit_miller" {
  name = "axvel-1bmofe-amit.miller"
}

resource "aws_iam_user_group_membership" "amit_miller__api_5_analysts" {
  user   = aws_iam_user.amit_miller.name
  groups = [aws_iam_group.api_5_analysts.name]
}

resource "aws_iam_user" "amit_nguyen" {
  name = "axvel-1bmofe-amit.nguyen"
}

resource "aws_iam_user_login_profile" "amit_nguyen" {
  user                    = aws_iam_user.amit_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_nguyen__auth_4_analysts" {
  user   = aws_iam_user.amit_nguyen.name
  groups = [aws_iam_group.auth_4_analysts.name]
}

resource "aws_iam_user" "amit_nguyen9105" {
  name = "axvel-1bmofe-amit.nguyen9105"
}

resource "aws_iam_user_login_profile" "amit_nguyen9105" {
  user                    = aws_iam_user.amit_nguyen9105.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_nguyen9105__ml_5_devs" {
  user   = aws_iam_user.amit_nguyen9105.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "amit_patel" {
  name = "axvel-1bmofe-amit.patel"
}

resource "aws_iam_user_login_profile" "amit_patel" {
  user                    = aws_iam_user.amit_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_patel__ml_6_devs" {
  user   = aws_iam_user.amit_patel.name
  groups = [aws_iam_group.ml_6_devs.name]
}

resource "aws_iam_user" "amit_patel5186" {
  name = "axvel-1bmofe-amit.patel5186"
}

resource "aws_iam_user_login_profile" "amit_patel5186" {
  user                    = aws_iam_user.amit_patel5186.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_patel5186__notifications_2_analysts" {
  user   = aws_iam_user.amit_patel5186.name
  groups = [aws_iam_group.notifications_2_analysts.name]
}

resource "aws_iam_user_group_membership" "amit_patel5186__web_4_analysts" {
  user   = aws_iam_user.amit_patel5186.name
  groups = [aws_iam_group.web_4_analysts.name]
}

resource "aws_iam_user" "amit_sato" {
  name = "axvel-1bmofe-amit.sato"
}

resource "aws_iam_user_login_profile" "amit_sato" {
  user                    = aws_iam_user.amit_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_sato__billing_4_devs" {
  user   = aws_iam_user.amit_sato.name
  groups = [aws_iam_group.billing_4_devs.name]
}

resource "aws_iam_user" "amit_sato439" {
  name = "axvel-1bmofe-amit.sato439"
}

resource "aws_iam_user_login_profile" "amit_sato439" {
  user                    = aws_iam_user.amit_sato439.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_sato439__data_6_analysts" {
  user   = aws_iam_user.amit_sato439.name
  groups = [aws_iam_group.data_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "amit_sato439__base_readonly" {
  user       = aws_iam_user.amit_sato439.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_tanaka" {
  name = "axvel-1bmofe-amit.tanaka"
}

resource "aws_iam_user_login_profile" "amit_tanaka" {
  user                    = aws_iam_user.amit_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_tanaka__notifications_3_analysts" {
  user   = aws_iam_user.amit_tanaka.name
  groups = [aws_iam_group.notifications_3_analysts.name]
}

resource "aws_iam_user" "amit_wong" {
  name = "axvel-1bmofe-amit.wong"
}

resource "aws_iam_user_group_membership" "amit_wong__infra_7_devs" {
  user   = aws_iam_user.amit_wong.name
  groups = [aws_iam_group.infra_7_devs.name]
}

resource "aws_iam_user_group_membership" "amit_wong__billing_7_analysts" {
  user   = aws_iam_user.amit_wong.name
  groups = [aws_iam_group.billing_7_analysts.name]
}

resource "aws_iam_user" "bela_brown" {
  name = "axvel-1bmofe-bela.brown"
}

resource "aws_iam_user_login_profile" "bela_brown" {
  user                    = aws_iam_user.bela_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_brown__ml_5_analysts" {
  user   = aws_iam_user.bela_brown.name
  groups = [aws_iam_group.ml_5_analysts.name]
}

resource "aws_iam_user" "bela_cohen" {
  name = "axvel-1bmofe-bela.cohen"
}

resource "aws_iam_user_login_profile" "bela_cohen" {
  user                    = aws_iam_user.bela_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_cohen__growth_6_devs" {
  user   = aws_iam_user.bela_cohen.name
  groups = [aws_iam_group.growth_6_devs.name]
}

resource "aws_iam_user_group_membership" "bela_cohen__mobile_2_analysts" {
  user   = aws_iam_user.bela_cohen.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "bela_cohen__base_readonly" {
  user       = aws_iam_user.bela_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "bela_cohen4832" {
  name = "axvel-1bmofe-bela.cohen4832"
}

resource "aws_iam_user_login_profile" "bela_cohen4832" {
  user                    = aws_iam_user.bela_cohen4832.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_cohen4832__web_analysts" {
  user   = aws_iam_user.bela_cohen4832.name
  groups = [aws_iam_group.web_analysts.name]
}

resource "aws_iam_user_group_membership" "bela_cohen4832__auth_3_analysts" {
  user   = aws_iam_user.bela_cohen4832.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user" "bela_gupta" {
  name = "axvel-1bmofe-bela.gupta"
}

resource "aws_iam_user_login_profile" "bela_gupta" {
  user                    = aws_iam_user.bela_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_gupta__billing_3_analysts" {
  user   = aws_iam_user.bela_gupta.name
  groups = [aws_iam_group.billing_3_analysts.name]
}

resource "aws_iam_user" "bela_ivanov" {
  name = "axvel-1bmofe-bela.ivanov"
}

resource "aws_iam_user_login_profile" "bela_ivanov" {
  user                    = aws_iam_user.bela_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_ivanov__growth_7_devs" {
  user   = aws_iam_user.bela_ivanov.name
  groups = [aws_iam_group.growth_7_devs.name]
}

resource "aws_iam_user" "bela_jones" {
  name = "axvel-1bmofe-bela.jones"
}

resource "aws_iam_user_login_profile" "bela_jones" {
  user                    = aws_iam_user.bela_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_jones__growth_5_analysts" {
  user   = aws_iam_user.bela_jones.name
  groups = [aws_iam_group.growth_5_analysts.name]
}

resource "aws_iam_user_group_membership" "bela_jones__notifications_2_analysts" {
  user   = aws_iam_user.bela_jones.name
  groups = [aws_iam_group.notifications_2_analysts.name]
}

resource "aws_iam_user" "bela_khan" {
  name = "axvel-1bmofe-bela.khan"
}

resource "aws_iam_user_login_profile" "bela_khan" {
  user                    = aws_iam_user.bela_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_khan__auth_3_devs" {
  user   = aws_iam_user.bela_khan.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user_group_membership" "bela_khan__support_3_analysts" {
  user   = aws_iam_user.bela_khan.name
  groups = [aws_iam_group.support_3_analysts.name]
}

resource "aws_iam_user" "bela_larsen" {
  name = "axvel-1bmofe-bela.larsen"
}

resource "aws_iam_user_group_membership" "bela_larsen__growth_7_devs" {
  user   = aws_iam_user.bela_larsen.name
  groups = [aws_iam_group.growth_7_devs.name]
}

resource "aws_iam_user" "bela_larsen7480" {
  name = "axvel-1bmofe-bela.larsen7480"
}

resource "aws_iam_user_login_profile" "bela_larsen7480" {
  user                    = aws_iam_user.bela_larsen7480.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_larsen7480__notifications_5_devs" {
  user   = aws_iam_user.bela_larsen7480.name
  groups = [aws_iam_group.notifications_5_devs.name]
}

resource "aws_iam_user_group_membership" "bela_larsen7480__support_2_analysts" {
  user   = aws_iam_user.bela_larsen7480.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user" "bela_novak" {
  name = "axvel-1bmofe-bela.novak"
}

resource "aws_iam_user_login_profile" "bela_novak" {
  user                    = aws_iam_user.bela_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_novak__mobile_7_devs" {
  user   = aws_iam_user.bela_novak.name
  groups = [aws_iam_group.mobile_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "bela_novak__base_readonly" {
  user       = aws_iam_user.bela_novak.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "bela_okafor" {
  name = "axvel-1bmofe-bela.okafor"
}

resource "aws_iam_user_login_profile" "bela_okafor" {
  user                    = aws_iam_user.bela_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_okafor__mobile_4_analysts" {
  user   = aws_iam_user.bela_okafor.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "bela_reddy" {
  name = "axvel-1bmofe-bela.reddy"
}

resource "aws_iam_user_login_profile" "bela_reddy" {
  user                    = aws_iam_user.bela_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_reddy__auth_3_devs" {
  user   = aws_iam_user.bela_reddy.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user" "bela_sato" {
  name = "axvel-1bmofe-bela.sato"
}

resource "aws_iam_user_login_profile" "bela_sato" {
  user                    = aws_iam_user.bela_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_sato__auth_devs" {
  user   = aws_iam_user.bela_sato.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user" "bela_sato1666" {
  name = "axvel-1bmofe-bela.sato1666"
}

resource "aws_iam_user_group_membership" "bela_sato1666__support_3_devs" {
  user   = aws_iam_user.bela_sato1666.name
  groups = [aws_iam_group.support_3_devs.name]
}

resource "aws_iam_user_group_membership" "bela_sato1666__infra_4_analysts" {
  user   = aws_iam_user.bela_sato1666.name
  groups = [aws_iam_group.infra_4_analysts.name]
}

resource "aws_iam_user" "bela_silva" {
  name = "axvel-1bmofe-bela.silva"
}

resource "aws_iam_user_login_profile" "bela_silva" {
  user                    = aws_iam_user.bela_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_silva__api_7_devs" {
  user   = aws_iam_user.bela_silva.name
  groups = [aws_iam_group.api_7_devs.name]
}

resource "aws_iam_user" "bela_silva4120" {
  name = "axvel-1bmofe-bela.silva4120"
}

resource "aws_iam_user_login_profile" "bela_silva4120" {
  user                    = aws_iam_user.bela_silva4120.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_silva4120__infra_5_analysts" {
  user   = aws_iam_user.bela_silva4120.name
  groups = [aws_iam_group.infra_5_analysts.name]
}

resource "aws_iam_user" "bela_singh" {
  name = "axvel-1bmofe-bela.singh"
}

resource "aws_iam_user_login_profile" "bela_singh" {
  user                    = aws_iam_user.bela_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_singh__web_devs" {
  user   = aws_iam_user.bela_singh.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user_group_membership" "bela_singh__billing_7_analysts" {
  user   = aws_iam_user.bela_singh.name
  groups = [aws_iam_group.billing_7_analysts.name]
}

resource "aws_iam_user" "bela_singh4141" {
  name = "axvel-1bmofe-bela.singh4141"
}

resource "aws_iam_user_login_profile" "bela_singh4141" {
  user                    = aws_iam_user.bela_singh4141.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_singh4141__search_2_devs" {
  user   = aws_iam_user.bela_singh4141.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "bela_smith" {
  name = "axvel-1bmofe-bela.smith"
}

resource "aws_iam_user_login_profile" "bela_smith" {
  user                    = aws_iam_user.bela_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_smith__search_5_devs" {
  user   = aws_iam_user.bela_smith.name
  groups = [aws_iam_group.search_5_devs.name]
}

resource "aws_iam_user_group_membership" "bela_smith__ml_2_analysts" {
  user   = aws_iam_user.bela_smith.name
  groups = [aws_iam_group.ml_2_analysts.name]
}

resource "aws_iam_user" "bob_cohen" {
  name = "axvel-1bmofe-bob.cohen"
}

resource "aws_iam_user_login_profile" "bob_cohen" {
  user                    = aws_iam_user.bob_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_cohen__mobile_2_devs" {
  user   = aws_iam_user.bob_cohen.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "bob_cohen7491" {
  name = "axvel-1bmofe-bob.cohen7491"
}

resource "aws_iam_user_login_profile" "bob_cohen7491" {
  user                    = aws_iam_user.bob_cohen7491.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_cohen7491__api_devs" {
  user   = aws_iam_user.bob_cohen7491.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user_group_membership" "bob_cohen7491__auth_3_analysts" {
  user   = aws_iam_user.bob_cohen7491.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user" "bob_davis" {
  name = "axvel-1bmofe-bob.davis"
}

resource "aws_iam_user_login_profile" "bob_davis" {
  user                    = aws_iam_user.bob_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_davis__data_3_analysts" {
  user   = aws_iam_user.bob_davis.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "bob_dubois" {
  name = "axvel-1bmofe-bob.dubois"
}

resource "aws_iam_user_login_profile" "bob_dubois" {
  user                    = aws_iam_user.bob_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_dubois__web_5_devs" {
  user   = aws_iam_user.bob_dubois.name
  groups = [aws_iam_group.web_5_devs.name]
}

resource "aws_iam_user" "bob_gupta" {
  name = "axvel-1bmofe-bob.gupta"
}

resource "aws_iam_user_group_membership" "bob_gupta__api_4_analysts" {
  user   = aws_iam_user.bob_gupta.name
  groups = [aws_iam_group.api_4_analysts.name]
}

resource "aws_iam_user" "bob_haddad" {
  name = "axvel-1bmofe-bob.haddad"
}

resource "aws_iam_user_group_membership" "bob_haddad__data_2_devs" {
  user   = aws_iam_user.bob_haddad.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "bob_haddad__base_readonly" {
  user       = aws_iam_user.bob_haddad.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "bob_ivanov" {
  name = "axvel-1bmofe-bob.ivanov"
}

resource "aws_iam_user_login_profile" "bob_ivanov" {
  user                    = aws_iam_user.bob_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_ivanov__notifications_analysts" {
  user   = aws_iam_user.bob_ivanov.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user" "bob_jones" {
  name = "axvel-1bmofe-bob.jones"
}

resource "aws_iam_user_group_membership" "bob_jones__notifications_2_devs" {
  user   = aws_iam_user.bob_jones.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "bob_larsen" {
  name = "axvel-1bmofe-bob.larsen"
}

resource "aws_iam_user_login_profile" "bob_larsen" {
  user                    = aws_iam_user.bob_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_larsen__infra_7_devs" {
  user   = aws_iam_user.bob_larsen.name
  groups = [aws_iam_group.infra_7_devs.name]
}

resource "aws_iam_user" "bob_muller" {
  name = "axvel-1bmofe-bob.muller"
}

resource "aws_iam_user_login_profile" "bob_muller" {
  user                    = aws_iam_user.bob_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_muller__mobile_4_devs" {
  user   = aws_iam_user.bob_muller.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "bob_nguyen" {
  name = "axvel-1bmofe-bob.nguyen"
}

resource "aws_iam_user_login_profile" "bob_nguyen" {
  user                    = aws_iam_user.bob_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_nguyen__infra_devs" {
  user   = aws_iam_user.bob_nguyen.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "bob_sato" {
  name = "axvel-1bmofe-bob.sato"
}

resource "aws_iam_user_login_profile" "bob_sato" {
  user                    = aws_iam_user.bob_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_sato__web_3_analysts" {
  user   = aws_iam_user.bob_sato.name
  groups = [aws_iam_group.web_3_analysts.name]
}

resource "aws_iam_user" "bob_smith" {
  name = "axvel-1bmofe-bob.smith"
}

resource "aws_iam_user_login_profile" "bob_smith" {
  user                    = aws_iam_user.bob_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_smith__search_5_analysts" {
  user   = aws_iam_user.bob_smith.name
  groups = [aws_iam_group.search_5_analysts.name]
}

resource "aws_iam_user" "carol_cohen" {
  name = "axvel-1bmofe-carol.cohen"
}

resource "aws_iam_user_login_profile" "carol_cohen" {
  user                    = aws_iam_user.carol_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_cohen__growth_3_devs" {
  user   = aws_iam_user.carol_cohen.name
  groups = [aws_iam_group.growth_3_devs.name]
}

resource "aws_iam_user" "carol_davis" {
  name = "axvel-1bmofe-carol.davis"
}

resource "aws_iam_user_login_profile" "carol_davis" {
  user                    = aws_iam_user.carol_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_davis__search_7_devs" {
  user   = aws_iam_user.carol_davis.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user" "carol_garcia" {
  name = "axvel-1bmofe-carol.garcia"
}

resource "aws_iam_user_login_profile" "carol_garcia" {
  user                    = aws_iam_user.carol_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_garcia__growth_6_analysts" {
  user   = aws_iam_user.carol_garcia.name
  groups = [aws_iam_group.growth_6_analysts.name]
}

resource "aws_iam_user_group_membership" "carol_garcia__search_4_analysts" {
  user   = aws_iam_user.carol_garcia.name
  groups = [aws_iam_group.search_4_analysts.name]
}

resource "aws_iam_user" "carol_haddad" {
  name = "axvel-1bmofe-carol.haddad"
}

resource "aws_iam_user_group_membership" "carol_haddad__web_3_devs" {
  user   = aws_iam_user.carol_haddad.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "carol_haddad__base_readonly" {
  user       = aws_iam_user.carol_haddad.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "carol_jones" {
  name = "axvel-1bmofe-carol.jones"
}

resource "aws_iam_user_login_profile" "carol_jones" {
  user                    = aws_iam_user.carol_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_jones__mobile_2_devs" {
  user   = aws_iam_user.carol_jones.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "carol_jones1557" {
  name = "axvel-1bmofe-carol.jones1557"
}

resource "aws_iam_user_group_membership" "carol_jones1557__billing_4_devs" {
  user   = aws_iam_user.carol_jones1557.name
  groups = [aws_iam_group.billing_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "carol_jones1557__base_readonly" {
  user       = aws_iam_user.carol_jones1557.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "carol_khan" {
  name = "axvel-1bmofe-carol.khan"
}

resource "aws_iam_user_login_profile" "carol_khan" {
  user                    = aws_iam_user.carol_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_khan__data_5_devs" {
  user   = aws_iam_user.carol_khan.name
  groups = [aws_iam_group.data_5_devs.name]
}

resource "aws_iam_user_group_membership" "carol_khan__auth_4_analysts" {
  user   = aws_iam_user.carol_khan.name
  groups = [aws_iam_group.auth_4_analysts.name]
}

resource "aws_iam_user" "carol_mehta" {
  name = "axvel-1bmofe-carol.mehta"
}

resource "aws_iam_user_login_profile" "carol_mehta" {
  user                    = aws_iam_user.carol_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_mehta__search_7_analysts" {
  user   = aws_iam_user.carol_mehta.name
  groups = [aws_iam_group.search_7_analysts.name]
}

resource "aws_iam_user" "carol_mehta2848" {
  name = "axvel-1bmofe-carol.mehta2848"
}

resource "aws_iam_user_login_profile" "carol_mehta2848" {
  user                    = aws_iam_user.carol_mehta2848.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_mehta2848__web_2_devs" {
  user   = aws_iam_user.carol_mehta2848.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_group_membership" "carol_mehta2848__notifications_6_analysts" {
  user   = aws_iam_user.carol_mehta2848.name
  groups = [aws_iam_group.notifications_6_analysts.name]
}

resource "aws_iam_user" "carol_miller" {
  name = "axvel-1bmofe-carol.miller"
}

resource "aws_iam_user_login_profile" "carol_miller" {
  user                    = aws_iam_user.carol_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_miller__search_3_devs" {
  user   = aws_iam_user.carol_miller.name
  groups = [aws_iam_group.search_3_devs.name]
}

resource "aws_iam_user" "carol_muller" {
  name = "axvel-1bmofe-carol.muller"
}

resource "aws_iam_user_login_profile" "carol_muller" {
  user                    = aws_iam_user.carol_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_muller__notifications_2_devs" {
  user   = aws_iam_user.carol_muller.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "carol_okafor" {
  name = "axvel-1bmofe-carol.okafor"
}

resource "aws_iam_user_login_profile" "carol_okafor" {
  user                    = aws_iam_user.carol_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_okafor__search_devs" {
  user   = aws_iam_user.carol_okafor.name
  groups = [aws_iam_group.search_devs.name]
}

resource "aws_iam_user_group_membership" "carol_okafor__web_6_analysts" {
  user   = aws_iam_user.carol_okafor.name
  groups = [aws_iam_group.web_6_analysts.name]
}

resource "aws_iam_user" "carol_patel" {
  name = "axvel-1bmofe-carol.patel"
}

resource "aws_iam_user_login_profile" "carol_patel" {
  user                    = aws_iam_user.carol_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_patel__mobile_7_devs" {
  user   = aws_iam_user.carol_patel.name
  groups = [aws_iam_group.mobile_7_devs.name]
}

resource "aws_iam_user" "carol_wong" {
  name = "axvel-1bmofe-carol.wong"
}

resource "aws_iam_user_group_membership" "carol_wong__support_2_analysts" {
  user   = aws_iam_user.carol_wong.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user" "chen_brown" {
  name = "axvel-1bmofe-chen.brown"
}

resource "aws_iam_user_login_profile" "chen_brown" {
  user                    = aws_iam_user.chen_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_brown__mobile_3_devs" {
  user   = aws_iam_user.chen_brown.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "chen_davis" {
  name = "axvel-1bmofe-chen.davis"
}

resource "aws_iam_user_login_profile" "chen_davis" {
  user                    = aws_iam_user.chen_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_davis__infra_4_analysts" {
  user   = aws_iam_user.chen_davis.name
  groups = [aws_iam_group.infra_4_analysts.name]
}

resource "aws_iam_user" "chen_garcia" {
  name = "axvel-1bmofe-chen.garcia"
}

resource "aws_iam_user_login_profile" "chen_garcia" {
  user                    = aws_iam_user.chen_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_garcia__support_5_devs" {
  user   = aws_iam_user.chen_garcia.name
  groups = [aws_iam_group.support_5_devs.name]
}

resource "aws_iam_user" "chen_gupta" {
  name = "axvel-1bmofe-chen.gupta"
}

resource "aws_iam_user_login_profile" "chen_gupta" {
  user                    = aws_iam_user.chen_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_gupta__growth_2_analysts" {
  user   = aws_iam_user.chen_gupta.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user_group_membership" "chen_gupta__search_analysts" {
  user   = aws_iam_user.chen_gupta.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "chen_haddad" {
  name = "axvel-1bmofe-chen.haddad"
}

resource "aws_iam_user_login_profile" "chen_haddad" {
  user                    = aws_iam_user.chen_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_haddad__search_6_analysts" {
  user   = aws_iam_user.chen_haddad.name
  groups = [aws_iam_group.search_6_analysts.name]
}

resource "aws_iam_user" "chen_haddad4218" {
  name = "axvel-1bmofe-chen.haddad4218"
}

resource "aws_iam_user_login_profile" "chen_haddad4218" {
  user                    = aws_iam_user.chen_haddad4218.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_haddad4218__ml_3_devs" {
  user   = aws_iam_user.chen_haddad4218.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user" "chen_ivanov" {
  name = "axvel-1bmofe-chen.ivanov"
}

resource "aws_iam_user_login_profile" "chen_ivanov" {
  user                    = aws_iam_user.chen_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_ivanov__auth_devs" {
  user   = aws_iam_user.chen_ivanov.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user" "chen_khan" {
  name = "axvel-1bmofe-chen.khan"
}

resource "aws_iam_user_login_profile" "chen_khan" {
  user                    = aws_iam_user.chen_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_khan__support_4_devs" {
  user   = aws_iam_user.chen_khan.name
  groups = [aws_iam_group.support_4_devs.name]
}

resource "aws_iam_user_group_membership" "chen_khan__mobile_6_analysts" {
  user   = aws_iam_user.chen_khan.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "chen_khan__base_readonly" {
  user       = aws_iam_user.chen_khan.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "chen_larsen" {
  name = "axvel-1bmofe-chen.larsen"
}

resource "aws_iam_user_group_membership" "chen_larsen__support_4_analysts" {
  user   = aws_iam_user.chen_larsen.name
  groups = [aws_iam_group.support_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "chen_larsen__base_readonly" {
  user       = aws_iam_user.chen_larsen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "chen_lopez" {
  name = "axvel-1bmofe-chen.lopez"
}

resource "aws_iam_user_login_profile" "chen_lopez" {
  user                    = aws_iam_user.chen_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_lopez__billing_2_devs" {
  user   = aws_iam_user.chen_lopez.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "chen_novak" {
  name = "axvel-1bmofe-chen.novak"
}

resource "aws_iam_user_group_membership" "chen_novak__data_devs" {
  user   = aws_iam_user.chen_novak.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "chen_novak7962" {
  name = "axvel-1bmofe-chen.novak7962"
}

resource "aws_iam_user_login_profile" "chen_novak7962" {
  user                    = aws_iam_user.chen_novak7962.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_novak7962__data_2_devs" {
  user   = aws_iam_user.chen_novak7962.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user_group_membership" "chen_novak7962__search_4_analysts" {
  user   = aws_iam_user.chen_novak7962.name
  groups = [aws_iam_group.search_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "chen_novak7962__base_readonly" {
  user       = aws_iam_user.chen_novak7962.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "chen_okafor" {
  name = "axvel-1bmofe-chen.okafor"
}

resource "aws_iam_user_login_profile" "chen_okafor" {
  user                    = aws_iam_user.chen_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_okafor__infra_devs" {
  user   = aws_iam_user.chen_okafor.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "chen_okafor8922" {
  name = "axvel-1bmofe-chen.okafor8922"
}

resource "aws_iam_user_login_profile" "chen_okafor8922" {
  user                    = aws_iam_user.chen_okafor8922.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_okafor8922__growth_analysts" {
  user   = aws_iam_user.chen_okafor8922.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "chen_patel" {
  name = "axvel-1bmofe-chen.patel"
}

resource "aws_iam_user_login_profile" "chen_patel" {
  user                    = aws_iam_user.chen_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_patel__auth_5_devs" {
  user   = aws_iam_user.chen_patel.name
  groups = [aws_iam_group.auth_5_devs.name]
}

resource "aws_iam_user" "chen_reddy" {
  name = "axvel-1bmofe-chen.reddy"
}

resource "aws_iam_user_login_profile" "chen_reddy" {
  user                    = aws_iam_user.chen_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_reddy__infra_devs" {
  user   = aws_iam_user.chen_reddy.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user_group_membership" "chen_reddy__notifications_3_analysts" {
  user   = aws_iam_user.chen_reddy.name
  groups = [aws_iam_group.notifications_3_analysts.name]
}

resource "aws_iam_user" "chen_smith" {
  name = "axvel-1bmofe-chen.smith"
}

resource "aws_iam_user_login_profile" "chen_smith" {
  user                    = aws_iam_user.chen_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_smith__ml_devs" {
  user   = aws_iam_user.chen_smith.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user" "chen_smith8173" {
  name = "axvel-1bmofe-chen.smith8173"
}

resource "aws_iam_user_login_profile" "chen_smith8173" {
  user                    = aws_iam_user.chen_smith8173.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_smith8173__web_6_analysts" {
  user   = aws_iam_user.chen_smith8173.name
  groups = [aws_iam_group.web_6_analysts.name]
}

resource "aws_iam_user_group_membership" "chen_smith8173__search_3_analysts" {
  user   = aws_iam_user.chen_smith8173.name
  groups = [aws_iam_group.search_3_analysts.name]
}

resource "aws_iam_user" "dara_ali" {
  name = "axvel-1bmofe-dara.ali"
}

resource "aws_iam_user_login_profile" "dara_ali" {
  user                    = aws_iam_user.dara_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_ali__web_5_devs" {
  user   = aws_iam_user.dara_ali.name
  groups = [aws_iam_group.web_5_devs.name]
}

resource "aws_iam_user" "dara_ali5801" {
  name = "axvel-1bmofe-dara.ali5801"
}

resource "aws_iam_user_login_profile" "dara_ali5801" {
  user                    = aws_iam_user.dara_ali5801.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_ali5801__support_devs" {
  user   = aws_iam_user.dara_ali5801.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "dara_brown" {
  name = "axvel-1bmofe-dara.brown"
}

resource "aws_iam_user_group_membership" "dara_brown__support_2_analysts" {
  user   = aws_iam_user.dara_brown.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user" "dara_chen" {
  name = "axvel-1bmofe-dara.chen"
}

resource "aws_iam_user_login_profile" "dara_chen" {
  user                    = aws_iam_user.dara_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_chen__data_5_analysts" {
  user   = aws_iam_user.dara_chen.name
  groups = [aws_iam_group.data_5_analysts.name]
}

resource "aws_iam_user" "dara_cohen" {
  name = "axvel-1bmofe-dara.cohen"
}

resource "aws_iam_user_login_profile" "dara_cohen" {
  user                    = aws_iam_user.dara_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_cohen__search_7_devs" {
  user   = aws_iam_user.dara_cohen.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user" "dara_davis" {
  name = "axvel-1bmofe-dara.davis"
}

resource "aws_iam_user_group_membership" "dara_davis__web_2_devs" {
  user   = aws_iam_user.dara_davis.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "dara_garcia" {
  name = "axvel-1bmofe-dara.garcia"
}

resource "aws_iam_user_login_profile" "dara_garcia" {
  user                    = aws_iam_user.dara_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_garcia__data_4_analysts" {
  user   = aws_iam_user.dara_garcia.name
  groups = [aws_iam_group.data_4_analysts.name]
}

resource "aws_iam_user" "dara_gupta" {
  name = "axvel-1bmofe-dara.gupta"
}

resource "aws_iam_user_login_profile" "dara_gupta" {
  user                    = aws_iam_user.dara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_gupta__web_7_analysts" {
  user   = aws_iam_user.dara_gupta.name
  groups = [aws_iam_group.web_7_analysts.name]
}

resource "aws_iam_user_group_membership" "dara_gupta__growth_4_analysts" {
  user   = aws_iam_user.dara_gupta.name
  groups = [aws_iam_group.growth_4_analysts.name]
}

resource "aws_iam_user" "dara_kim" {
  name = "axvel-1bmofe-dara.kim"
}

resource "aws_iam_user_login_profile" "dara_kim" {
  user                    = aws_iam_user.dara_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_kim__search_6_devs" {
  user   = aws_iam_user.dara_kim.name
  groups = [aws_iam_group.search_6_devs.name]
}

resource "aws_iam_user_group_membership" "dara_kim__web_7_analysts" {
  user   = aws_iam_user.dara_kim.name
  groups = [aws_iam_group.web_7_analysts.name]
}

resource "aws_iam_user" "dara_nguyen" {
  name = "axvel-1bmofe-dara.nguyen"
}

resource "aws_iam_user_login_profile" "dara_nguyen" {
  user                    = aws_iam_user.dara_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_nguyen__web_2_devs" {
  user   = aws_iam_user.dara_nguyen.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_group_membership" "dara_nguyen__mobile_2_analysts" {
  user   = aws_iam_user.dara_nguyen.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "dara_okafor" {
  name = "axvel-1bmofe-dara.okafor"
}

resource "aws_iam_user_group_membership" "dara_okafor__billing_2_devs" {
  user   = aws_iam_user.dara_okafor.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "dara_okafor__base_readonly" {
  user       = aws_iam_user.dara_okafor.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_patel" {
  name = "axvel-1bmofe-dara.patel"
}

resource "aws_iam_user_login_profile" "dara_patel" {
  user                    = aws_iam_user.dara_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_patel__data_4_analysts" {
  user   = aws_iam_user.dara_patel.name
  groups = [aws_iam_group.data_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "dara_patel__base_readonly" {
  user       = aws_iam_user.dara_patel.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_smith" {
  name = "axvel-1bmofe-dara.smith"
}

resource "aws_iam_user_login_profile" "dara_smith" {
  user                    = aws_iam_user.dara_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_smith__api_5_devs" {
  user   = aws_iam_user.dara_smith.name
  groups = [aws_iam_group.api_5_devs.name]
}

resource "aws_iam_user_group_membership" "dara_smith__search_7_analysts" {
  user   = aws_iam_user.dara_smith.name
  groups = [aws_iam_group.search_7_analysts.name]
}

resource "aws_iam_user" "dara_wong" {
  name = "axvel-1bmofe-dara.wong"
}

resource "aws_iam_user_login_profile" "dara_wong" {
  user                    = aws_iam_user.dara_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_wong__auth_6_analysts" {
  user   = aws_iam_user.dara_wong.name
  groups = [aws_iam_group.auth_6_analysts.name]
}

resource "aws_iam_user" "dave_ali" {
  name = "axvel-1bmofe-dave.ali"
}

resource "aws_iam_user_login_profile" "dave_ali" {
  user                    = aws_iam_user.dave_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_ali__billing_3_analysts" {
  user   = aws_iam_user.dave_ali.name
  groups = [aws_iam_group.billing_3_analysts.name]
}

resource "aws_iam_user" "dave_brown" {
  name = "axvel-1bmofe-dave.brown"
}

resource "aws_iam_user_login_profile" "dave_brown" {
  user                    = aws_iam_user.dave_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_brown__growth_devs" {
  user   = aws_iam_user.dave_brown.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user_group_membership" "dave_brown__data_7_analysts" {
  user   = aws_iam_user.dave_brown.name
  groups = [aws_iam_group.data_7_analysts.name]
}

resource "aws_iam_user" "dave_cohen" {
  name = "axvel-1bmofe-dave.cohen"
}

resource "aws_iam_user_login_profile" "dave_cohen" {
  user                    = aws_iam_user.dave_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_cohen__infra_4_devs" {
  user   = aws_iam_user.dave_cohen.name
  groups = [aws_iam_group.infra_4_devs.name]
}

resource "aws_iam_user" "dave_cohen761" {
  name = "axvel-1bmofe-dave.cohen761"
}

resource "aws_iam_user_login_profile" "dave_cohen761" {
  user                    = aws_iam_user.dave_cohen761.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_cohen761__search_devs" {
  user   = aws_iam_user.dave_cohen761.name
  groups = [aws_iam_group.search_devs.name]
}

resource "aws_iam_user" "dave_dubois" {
  name = "axvel-1bmofe-dave.dubois"
}

resource "aws_iam_user_login_profile" "dave_dubois" {
  user                    = aws_iam_user.dave_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_dubois__support_6_devs" {
  user   = aws_iam_user.dave_dubois.name
  groups = [aws_iam_group.support_6_devs.name]
}

resource "aws_iam_user" "dave_garcia" {
  name = "axvel-1bmofe-dave.garcia"
}

resource "aws_iam_user_login_profile" "dave_garcia" {
  user                    = aws_iam_user.dave_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_garcia__billing_5_analysts" {
  user   = aws_iam_user.dave_garcia.name
  groups = [aws_iam_group.billing_5_analysts.name]
}

resource "aws_iam_user" "dave_haddad" {
  name = "axvel-1bmofe-dave.haddad"
}

resource "aws_iam_user_login_profile" "dave_haddad" {
  user                    = aws_iam_user.dave_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_haddad__data_4_devs" {
  user   = aws_iam_user.dave_haddad.name
  groups = [aws_iam_group.data_4_devs.name]
}

resource "aws_iam_user" "dave_reddy" {
  name = "axvel-1bmofe-dave.reddy"
}

resource "aws_iam_user_login_profile" "dave_reddy" {
  user                    = aws_iam_user.dave_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_reddy__growth_6_devs" {
  user   = aws_iam_user.dave_reddy.name
  groups = [aws_iam_group.growth_6_devs.name]
}

resource "aws_iam_user_group_membership" "dave_reddy__notifications_2_analysts" {
  user   = aws_iam_user.dave_reddy.name
  groups = [aws_iam_group.notifications_2_analysts.name]
}

resource "aws_iam_user" "dave_reddy1150" {
  name = "axvel-1bmofe-dave.reddy1150"
}

resource "aws_iam_user_login_profile" "dave_reddy1150" {
  user                    = aws_iam_user.dave_reddy1150.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_reddy1150__notifications_devs" {
  user   = aws_iam_user.dave_reddy1150.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "dave_singh" {
  name = "axvel-1bmofe-dave.singh"
}

resource "aws_iam_user_login_profile" "dave_singh" {
  user                    = aws_iam_user.dave_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_singh__search_4_devs" {
  user   = aws_iam_user.dave_singh.name
  groups = [aws_iam_group.search_4_devs.name]
}

resource "aws_iam_user" "dave_tanaka" {
  name = "axvel-1bmofe-dave.tanaka"
}

resource "aws_iam_user_login_profile" "dave_tanaka" {
  user                    = aws_iam_user.dave_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_tanaka__billing_4_devs" {
  user   = aws_iam_user.dave_tanaka.name
  groups = [aws_iam_group.billing_4_devs.name]
}

resource "aws_iam_user_group_membership" "dave_tanaka__search_7_analysts" {
  user   = aws_iam_user.dave_tanaka.name
  groups = [aws_iam_group.search_7_analysts.name]
}

resource "aws_iam_user" "eli_ali" {
  name = "axvel-1bmofe-eli.ali"
}

resource "aws_iam_user_login_profile" "eli_ali" {
  user                    = aws_iam_user.eli_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_ali__api_2_analysts" {
  user   = aws_iam_user.eli_ali.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user" "eli_ali3283" {
  name = "axvel-1bmofe-eli.ali3283"
}

resource "aws_iam_user_login_profile" "eli_ali3283" {
  user                    = aws_iam_user.eli_ali3283.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_ali3283__search_4_devs" {
  user   = aws_iam_user.eli_ali3283.name
  groups = [aws_iam_group.search_4_devs.name]
}

resource "aws_iam_user" "eli_ali3296" {
  name = "axvel-1bmofe-eli.ali3296"
}

resource "aws_iam_user_login_profile" "eli_ali3296" {
  user                    = aws_iam_user.eli_ali3296.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_ali3296__support_5_analysts" {
  user   = aws_iam_user.eli_ali3296.name
  groups = [aws_iam_group.support_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "eli_ali3296__base_readonly" {
  user       = aws_iam_user.eli_ali3296.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_chen" {
  name = "axvel-1bmofe-eli.chen"
}

resource "aws_iam_user_login_profile" "eli_chen" {
  user                    = aws_iam_user.eli_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_chen__ml_3_analysts" {
  user   = aws_iam_user.eli_chen.name
  groups = [aws_iam_group.ml_3_analysts.name]
}

resource "aws_iam_user" "eli_garcia" {
  name = "axvel-1bmofe-eli.garcia"
}

resource "aws_iam_user_login_profile" "eli_garcia" {
  user                    = aws_iam_user.eli_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_garcia__api_7_devs" {
  user   = aws_iam_user.eli_garcia.name
  groups = [aws_iam_group.api_7_devs.name]
}

resource "aws_iam_user_group_membership" "eli_garcia__mobile_7_analysts" {
  user   = aws_iam_user.eli_garcia.name
  groups = [aws_iam_group.mobile_7_analysts.name]
}

resource "aws_iam_user" "eli_jones" {
  name = "axvel-1bmofe-eli.jones"
}

resource "aws_iam_user_login_profile" "eli_jones" {
  user                    = aws_iam_user.eli_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_jones__web_devs" {
  user   = aws_iam_user.eli_jones.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "eli_larsen" {
  name = "axvel-1bmofe-eli.larsen"
}

resource "aws_iam_user_group_membership" "eli_larsen__billing_3_analysts" {
  user   = aws_iam_user.eli_larsen.name
  groups = [aws_iam_group.billing_3_analysts.name]
}

resource "aws_iam_user_group_membership" "eli_larsen__growth_5_analysts" {
  user   = aws_iam_user.eli_larsen.name
  groups = [aws_iam_group.growth_5_analysts.name]
}

resource "aws_iam_user" "eli_lopez" {
  name = "axvel-1bmofe-eli.lopez"
}

resource "aws_iam_user_login_profile" "eli_lopez" {
  user                    = aws_iam_user.eli_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_lopez__infra_devs" {
  user   = aws_iam_user.eli_lopez.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user_policy_attachment" "eli_lopez__base_readonly" {
  user       = aws_iam_user.eli_lopez.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_mehta" {
  name = "axvel-1bmofe-eli.mehta"
}

resource "aws_iam_user_login_profile" "eli_mehta" {
  user                    = aws_iam_user.eli_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_mehta__notifications_devs" {
  user   = aws_iam_user.eli_mehta.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "eli_miller" {
  name = "axvel-1bmofe-eli.miller"
}

resource "aws_iam_user_login_profile" "eli_miller" {
  user                    = aws_iam_user.eli_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_miller__mobile_3_devs" {
  user   = aws_iam_user.eli_miller.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "eli_miller3357" {
  name = "axvel-1bmofe-eli.miller3357"
}

resource "aws_iam_user_group_membership" "eli_miller3357__growth_5_analysts" {
  user   = aws_iam_user.eli_miller3357.name
  groups = [aws_iam_group.growth_5_analysts.name]
}

resource "aws_iam_user" "eli_okafor" {
  name = "axvel-1bmofe-eli.okafor"
}

resource "aws_iam_user_login_profile" "eli_okafor" {
  user                    = aws_iam_user.eli_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_okafor__billing_6_analysts" {
  user   = aws_iam_user.eli_okafor.name
  groups = [aws_iam_group.billing_6_analysts.name]
}

resource "aws_iam_user" "eli_singh" {
  name = "axvel-1bmofe-eli.singh"
}

resource "aws_iam_user_login_profile" "eli_singh" {
  user                    = aws_iam_user.eli_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_singh__ml_4_devs" {
  user   = aws_iam_user.eli_singh.name
  groups = [aws_iam_group.ml_4_devs.name]
}

resource "aws_iam_user" "eli_tanaka" {
  name = "axvel-1bmofe-eli.tanaka"
}

resource "aws_iam_user_group_membership" "eli_tanaka__mobile_devs" {
  user   = aws_iam_user.eli_tanaka.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "erin_cohen" {
  name = "axvel-1bmofe-erin.cohen"
}

resource "aws_iam_user_login_profile" "erin_cohen" {
  user                    = aws_iam_user.erin_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_cohen__billing_6_devs" {
  user   = aws_iam_user.erin_cohen.name
  groups = [aws_iam_group.billing_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "erin_cohen__base_readonly" {
  user       = aws_iam_user.erin_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "erin_davis" {
  name = "axvel-1bmofe-erin.davis"
}

resource "aws_iam_user_login_profile" "erin_davis" {
  user                    = aws_iam_user.erin_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_davis__growth_3_analysts" {
  user   = aws_iam_user.erin_davis.name
  groups = [aws_iam_group.growth_3_analysts.name]
}

resource "aws_iam_user" "erin_garcia" {
  name = "axvel-1bmofe-erin.garcia"
}

resource "aws_iam_user_login_profile" "erin_garcia" {
  user                    = aws_iam_user.erin_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_garcia__data_5_devs" {
  user   = aws_iam_user.erin_garcia.name
  groups = [aws_iam_group.data_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "erin_garcia__base_readonly" {
  user       = aws_iam_user.erin_garcia.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "erin_gupta" {
  name = "axvel-1bmofe-erin.gupta"
}

resource "aws_iam_user_login_profile" "erin_gupta" {
  user                    = aws_iam_user.erin_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_gupta__growth_5_devs" {
  user   = aws_iam_user.erin_gupta.name
  groups = [aws_iam_group.growth_5_devs.name]
}

resource "aws_iam_user" "erin_kim" {
  name = "axvel-1bmofe-erin.kim"
}

resource "aws_iam_user_login_profile" "erin_kim" {
  user                    = aws_iam_user.erin_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_kim__mobile_6_devs" {
  user   = aws_iam_user.erin_kim.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "erin_kim__base_readonly" {
  user       = aws_iam_user.erin_kim.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "erin_kim9378" {
  name = "axvel-1bmofe-erin.kim9378"
}

resource "aws_iam_user_login_profile" "erin_kim9378" {
  user                    = aws_iam_user.erin_kim9378.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_kim9378__infra_6_devs" {
  user   = aws_iam_user.erin_kim9378.name
  groups = [aws_iam_group.infra_6_devs.name]
}

resource "aws_iam_user" "erin_larsen" {
  name = "axvel-1bmofe-erin.larsen"
}

resource "aws_iam_user_login_profile" "erin_larsen" {
  user                    = aws_iam_user.erin_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_larsen__notifications_5_devs" {
  user   = aws_iam_user.erin_larsen.name
  groups = [aws_iam_group.notifications_5_devs.name]
}

resource "aws_iam_user" "erin_miller" {
  name = "axvel-1bmofe-erin.miller"
}

resource "aws_iam_user_login_profile" "erin_miller" {
  user                    = aws_iam_user.erin_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_miller__ml_3_devs" {
  user   = aws_iam_user.erin_miller.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user_group_membership" "erin_miller__growth_3_analysts" {
  user   = aws_iam_user.erin_miller.name
  groups = [aws_iam_group.growth_3_analysts.name]
}

resource "aws_iam_user" "erin_muller" {
  name = "axvel-1bmofe-erin.muller"
}

resource "aws_iam_user_login_profile" "erin_muller" {
  user                    = aws_iam_user.erin_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_muller__billing_3_analysts" {
  user   = aws_iam_user.erin_muller.name
  groups = [aws_iam_group.billing_3_analysts.name]
}

resource "aws_iam_user_group_membership" "erin_muller__support_4_analysts" {
  user   = aws_iam_user.erin_muller.name
  groups = [aws_iam_group.support_4_analysts.name]
}

resource "aws_iam_user" "erin_muller8023" {
  name = "axvel-1bmofe-erin.muller8023"
}

resource "aws_iam_user_login_profile" "erin_muller8023" {
  user                    = aws_iam_user.erin_muller8023.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_muller8023__ml_5_devs" {
  user   = aws_iam_user.erin_muller8023.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "erin_nguyen" {
  name = "axvel-1bmofe-erin.nguyen"
}

resource "aws_iam_user_login_profile" "erin_nguyen" {
  user                    = aws_iam_user.erin_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_nguyen__notifications_devs" {
  user   = aws_iam_user.erin_nguyen.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user_group_membership" "erin_nguyen__mobile_4_analysts" {
  user   = aws_iam_user.erin_nguyen.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "erin_patel" {
  name = "axvel-1bmofe-erin.patel"
}

resource "aws_iam_user_login_profile" "erin_patel" {
  user                    = aws_iam_user.erin_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_patel__search_2_devs" {
  user   = aws_iam_user.erin_patel.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "erin_patel__base_readonly" {
  user       = aws_iam_user.erin_patel.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "erin_reddy" {
  name = "axvel-1bmofe-erin.reddy"
}

resource "aws_iam_user_group_membership" "erin_reddy__api_2_analysts" {
  user   = aws_iam_user.erin_reddy.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user" "ext_amit_kim" {
  name = "axvel-1bmofe-ext-amit.kim"
}

resource "aws_iam_user_login_profile" "ext_amit_kim" {
  user                    = aws_iam_user.ext_amit_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_amit_kim__contractors" {
  user   = aws_iam_user.ext_amit_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_amit_mehta" {
  name = "axvel-1bmofe-ext-amit.mehta"
}

resource "aws_iam_user_login_profile" "ext_amit_mehta" {
  user                    = aws_iam_user.ext_amit_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_amit_mehta__contractors" {
  user   = aws_iam_user.ext_amit_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_amit_singh" {
  name = "axvel-1bmofe-ext-amit.singh"
}

resource "aws_iam_user_login_profile" "ext_amit_singh" {
  user                    = aws_iam_user.ext_amit_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_amit_singh__contractors" {
  user   = aws_iam_user.ext_amit_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_amit_singh__infra_5_analysts" {
  user   = aws_iam_user.ext_amit_singh.name
  groups = [aws_iam_group.infra_5_analysts.name]
}

resource "aws_iam_user" "ext_bela_ali" {
  name = "axvel-1bmofe-ext-bela.ali"
}

resource "aws_iam_user_login_profile" "ext_bela_ali" {
  user                    = aws_iam_user.ext_bela_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bela_ali__contractors" {
  user   = aws_iam_user.ext_bela_ali.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_bela_okafor" {
  name = "axvel-1bmofe-ext-bela.okafor"
}

resource "aws_iam_user_login_profile" "ext_bela_okafor" {
  user                    = aws_iam_user.ext_bela_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bela_okafor__contractors" {
  user   = aws_iam_user.ext_bela_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_bela_okafor__api_4_analysts" {
  user   = aws_iam_user.ext_bela_okafor.name
  groups = [aws_iam_group.api_4_analysts.name]
}

resource "aws_iam_user" "ext_bob_patel" {
  name = "axvel-1bmofe-ext-bob.patel"
}

resource "aws_iam_user_login_profile" "ext_bob_patel" {
  user                    = aws_iam_user.ext_bob_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bob_patel__contractors" {
  user   = aws_iam_user.ext_bob_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_bob_patel__support_analysts" {
  user   = aws_iam_user.ext_bob_patel.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "ext_bob_tanaka" {
  name = "axvel-1bmofe-ext-bob.tanaka"
}

resource "aws_iam_user_login_profile" "ext_bob_tanaka" {
  user                    = aws_iam_user.ext_bob_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bob_tanaka__contractors" {
  user   = aws_iam_user.ext_bob_tanaka.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_carol_nguyen" {
  name = "axvel-1bmofe-ext-carol.nguyen"
}

resource "aws_iam_user_login_profile" "ext_carol_nguyen" {
  user                    = aws_iam_user.ext_carol_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_carol_nguyen__contractors" {
  user   = aws_iam_user.ext_carol_nguyen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_carol_novak" {
  name = "axvel-1bmofe-ext-carol.novak"
}

resource "aws_iam_user_login_profile" "ext_carol_novak" {
  user                    = aws_iam_user.ext_carol_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_carol_novak__contractors" {
  user   = aws_iam_user.ext_carol_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_chen_ivanov" {
  name = "axvel-1bmofe-ext-chen.ivanov"
}

resource "aws_iam_user_login_profile" "ext_chen_ivanov" {
  user                    = aws_iam_user.ext_chen_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_ivanov__contractors" {
  user   = aws_iam_user.ext_chen_ivanov.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_chen_singh" {
  name = "axvel-1bmofe-ext-chen.singh"
}

resource "aws_iam_user_login_profile" "ext_chen_singh" {
  user                    = aws_iam_user.ext_chen_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_singh__contractors" {
  user   = aws_iam_user.ext_chen_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_chen_singh__search_5_analysts" {
  user   = aws_iam_user.ext_chen_singh.name
  groups = [aws_iam_group.search_5_analysts.name]
}

resource "aws_iam_user" "ext_chen_smith" {
  name = "axvel-1bmofe-ext-chen.smith"
}

resource "aws_iam_user_login_profile" "ext_chen_smith" {
  user                    = aws_iam_user.ext_chen_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_smith__contractors" {
  user   = aws_iam_user.ext_chen_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_chen_smith__infra_3_analysts" {
  user   = aws_iam_user.ext_chen_smith.name
  groups = [aws_iam_group.infra_3_analysts.name]
}

resource "aws_iam_user" "ext_eli_brown" {
  name = "axvel-1bmofe-ext-eli.brown"
}

resource "aws_iam_user_login_profile" "ext_eli_brown" {
  user                    = aws_iam_user.ext_eli_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_eli_brown__contractors" {
  user   = aws_iam_user.ext_eli_brown.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_erin_ali" {
  name = "axvel-1bmofe-ext-erin.ali"
}

resource "aws_iam_user_login_profile" "ext_erin_ali" {
  user                    = aws_iam_user.ext_erin_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_erin_ali__contractors" {
  user   = aws_iam_user.ext_erin_ali.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_erin_ali__web_4_analysts" {
  user   = aws_iam_user.ext_erin_ali.name
  groups = [aws_iam_group.web_4_analysts.name]
}

resource "aws_iam_user" "ext_erin_wong" {
  name = "axvel-1bmofe-ext-erin.wong"
}

resource "aws_iam_user_login_profile" "ext_erin_wong" {
  user                    = aws_iam_user.ext_erin_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_erin_wong__contractors" {
  user   = aws_iam_user.ext_erin_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_fay_haddad" {
  name = "axvel-1bmofe-ext-fay.haddad"
}

resource "aws_iam_user_login_profile" "ext_fay_haddad" {
  user                    = aws_iam_user.ext_fay_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_haddad__contractors" {
  user   = aws_iam_user.ext_fay_haddad.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_frank_khan" {
  name = "axvel-1bmofe-ext-frank.khan"
}

resource "aws_iam_user_login_profile" "ext_frank_khan" {
  user                    = aws_iam_user.ext_frank_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_khan__contractors" {
  user   = aws_iam_user.ext_frank_khan.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_frank_sato" {
  name = "axvel-1bmofe-ext-frank.sato"
}

resource "aws_iam_user_login_profile" "ext_frank_sato" {
  user                    = aws_iam_user.ext_frank_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_sato__contractors" {
  user   = aws_iam_user.ext_frank_sato.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_frank_sato__growth_2_analysts" {
  user   = aws_iam_user.ext_frank_sato.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "ext_grace_haddad" {
  name = "axvel-1bmofe-ext-grace.haddad"
}

resource "aws_iam_user_login_profile" "ext_grace_haddad" {
  user                    = aws_iam_user.ext_grace_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_haddad__contractors" {
  user   = aws_iam_user.ext_grace_haddad.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_grace_lopez" {
  name = "axvel-1bmofe-ext-grace.lopez"
}

resource "aws_iam_user_login_profile" "ext_grace_lopez" {
  user                    = aws_iam_user.ext_grace_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_lopez__contractors" {
  user   = aws_iam_user.ext_grace_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_grace_lopez__web_4_analysts" {
  user   = aws_iam_user.ext_grace_lopez.name
  groups = [aws_iam_group.web_4_analysts.name]
}

resource "aws_iam_user" "ext_gus_gupta" {
  name = "axvel-1bmofe-ext-gus.gupta"
}

resource "aws_iam_user_login_profile" "ext_gus_gupta" {
  user                    = aws_iam_user.ext_gus_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_gus_gupta__contractors" {
  user   = aws_iam_user.ext_gus_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_hana_kim" {
  name = "axvel-1bmofe-ext-hana.kim"
}

resource "aws_iam_user_login_profile" "ext_hana_kim" {
  user                    = aws_iam_user.ext_hana_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_hana_kim__contractors" {
  user   = aws_iam_user.ext_hana_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_hana_patel" {
  name = "axvel-1bmofe-ext-hana.patel"
}

resource "aws_iam_user_login_profile" "ext_hana_patel" {
  user                    = aws_iam_user.ext_hana_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_hana_patel__contractors" {
  user   = aws_iam_user.ext_hana_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_heidi_wong" {
  name = "axvel-1bmofe-ext-heidi.wong"
}

resource "aws_iam_user_login_profile" "ext_heidi_wong" {
  user                    = aws_iam_user.ext_heidi_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_heidi_wong__contractors" {
  user   = aws_iam_user.ext_heidi_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_ian_novak" {
  name = "axvel-1bmofe-ext-ian.novak"
}

resource "aws_iam_user_login_profile" "ext_ian_novak" {
  user                    = aws_iam_user.ext_ian_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ian_novak__contractors" {
  user   = aws_iam_user.ext_ian_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_ian_silva" {
  name = "axvel-1bmofe-ext-ian.silva"
}

resource "aws_iam_user_login_profile" "ext_ian_silva" {
  user                    = aws_iam_user.ext_ian_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ian_silva__contractors" {
  user   = aws_iam_user.ext_ian_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_ian_wong" {
  name = "axvel-1bmofe-ext-ian.wong"
}

resource "aws_iam_user_login_profile" "ext_ian_wong" {
  user                    = aws_iam_user.ext_ian_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ian_wong__contractors" {
  user   = aws_iam_user.ext_ian_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_ivan_patel" {
  name = "axvel-1bmofe-ext-ivan.patel"
}

resource "aws_iam_user_login_profile" "ext_ivan_patel" {
  user                    = aws_iam_user.ext_ivan_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ivan_patel__contractors" {
  user   = aws_iam_user.ext_ivan_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_ivan_patel__search_analysts" {
  user   = aws_iam_user.ext_ivan_patel.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "ext_ivan_rossi" {
  name = "axvel-1bmofe-ext-ivan.rossi"
}

resource "aws_iam_user_login_profile" "ext_ivan_rossi" {
  user                    = aws_iam_user.ext_ivan_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ivan_rossi__contractors" {
  user   = aws_iam_user.ext_ivan_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_ivan_rossi__support_2_analysts" {
  user   = aws_iam_user.ext_ivan_rossi.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user" "ext_ivan_smith" {
  name = "axvel-1bmofe-ext-ivan.smith"
}

resource "aws_iam_user_login_profile" "ext_ivan_smith" {
  user                    = aws_iam_user.ext_ivan_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ivan_smith__contractors" {
  user   = aws_iam_user.ext_ivan_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_judy_brown" {
  name = "axvel-1bmofe-ext-judy.brown"
}

resource "aws_iam_user_login_profile" "ext_judy_brown" {
  user                    = aws_iam_user.ext_judy_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_brown__contractors" {
  user   = aws_iam_user.ext_judy_brown.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_judy_jones" {
  name = "axvel-1bmofe-ext-judy.jones"
}

resource "aws_iam_user_login_profile" "ext_judy_jones" {
  user                    = aws_iam_user.ext_judy_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_jones__contractors" {
  user   = aws_iam_user.ext_judy_jones.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_judy_patel" {
  name = "axvel-1bmofe-ext-judy.patel"
}

resource "aws_iam_user_login_profile" "ext_judy_patel" {
  user                    = aws_iam_user.ext_judy_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_patel__contractors" {
  user   = aws_iam_user.ext_judy_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_jun_wong" {
  name = "axvel-1bmofe-ext-jun.wong"
}

resource "aws_iam_user_login_profile" "ext_jun_wong" {
  user                    = aws_iam_user.ext_jun_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_jun_wong__contractors" {
  user   = aws_iam_user.ext_jun_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_jun_wong__data_2_analysts" {
  user   = aws_iam_user.ext_jun_wong.name
  groups = [aws_iam_group.data_2_analysts.name]
}

resource "aws_iam_user" "ext_karl_haddad" {
  name = "axvel-1bmofe-ext-karl.haddad"
}

resource "aws_iam_user_login_profile" "ext_karl_haddad" {
  user                    = aws_iam_user.ext_karl_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_karl_haddad__contractors" {
  user   = aws_iam_user.ext_karl_haddad.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_karl_kim" {
  name = "axvel-1bmofe-ext-karl.kim"
}

resource "aws_iam_user_login_profile" "ext_karl_kim" {
  user                    = aws_iam_user.ext_karl_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_karl_kim__contractors" {
  user   = aws_iam_user.ext_karl_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_karl_kim__mobile_6_analysts" {
  user   = aws_iam_user.ext_karl_kim.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "ext_kia_ivanov" {
  name = "axvel-1bmofe-ext-kia.ivanov"
}

resource "aws_iam_user_login_profile" "ext_kia_ivanov" {
  user                    = aws_iam_user.ext_kia_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_ivanov__contractors" {
  user   = aws_iam_user.ext_kia_ivanov.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_kia_ivanov__infra_5_analysts" {
  user   = aws_iam_user.ext_kia_ivanov.name
  groups = [aws_iam_group.infra_5_analysts.name]
}

resource "aws_iam_user" "ext_kia_mehta" {
  name = "axvel-1bmofe-ext-kia.mehta"
}

resource "aws_iam_user_login_profile" "ext_kia_mehta" {
  user                    = aws_iam_user.ext_kia_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_mehta__contractors" {
  user   = aws_iam_user.ext_kia_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_kia_mehta__auth_analysts" {
  user   = aws_iam_user.ext_kia_mehta.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user" "ext_kia_patel" {
  name = "axvel-1bmofe-ext-kia.patel"
}

resource "aws_iam_user_login_profile" "ext_kia_patel" {
  user                    = aws_iam_user.ext_kia_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_patel__contractors" {
  user   = aws_iam_user.ext_kia_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_kia_patel__support_5_analysts" {
  user   = aws_iam_user.ext_kia_patel.name
  groups = [aws_iam_group.support_5_analysts.name]
}

resource "aws_iam_user" "ext_leo_brown" {
  name = "axvel-1bmofe-ext-leo.brown"
}

resource "aws_iam_user_login_profile" "ext_leo_brown" {
  user                    = aws_iam_user.ext_leo_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_leo_brown__contractors" {
  user   = aws_iam_user.ext_leo_brown.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_leo_gupta" {
  name = "axvel-1bmofe-ext-leo.gupta"
}

resource "aws_iam_user_login_profile" "ext_leo_gupta" {
  user                    = aws_iam_user.ext_leo_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_leo_gupta__contractors" {
  user   = aws_iam_user.ext_leo_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_mike_okafor" {
  name = "axvel-1bmofe-ext-mike.okafor"
}

resource "aws_iam_user_login_profile" "ext_mike_okafor" {
  user                    = aws_iam_user.ext_mike_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mike_okafor__contractors" {
  user   = aws_iam_user.ext_mike_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_mike_okafor__web_2_analysts" {
  user   = aws_iam_user.ext_mike_okafor.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "ext_noor_silva" {
  name = "axvel-1bmofe-ext-noor.silva"
}

resource "aws_iam_user_login_profile" "ext_noor_silva" {
  user                    = aws_iam_user.ext_noor_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_noor_silva__contractors" {
  user   = aws_iam_user.ext_noor_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_noor_silva__web_6_analysts" {
  user   = aws_iam_user.ext_noor_silva.name
  groups = [aws_iam_group.web_6_analysts.name]
}

resource "aws_iam_user" "ext_omar_smith" {
  name = "axvel-1bmofe-ext-omar.smith"
}

resource "aws_iam_user_login_profile" "ext_omar_smith" {
  user                    = aws_iam_user.ext_omar_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_omar_smith__contractors" {
  user   = aws_iam_user.ext_omar_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_omar_smith__ml_3_analysts" {
  user   = aws_iam_user.ext_omar_smith.name
  groups = [aws_iam_group.ml_3_analysts.name]
}

resource "aws_iam_user" "ext_priya_ali" {
  name = "axvel-1bmofe-ext-priya.ali"
}

resource "aws_iam_user_login_profile" "ext_priya_ali" {
  user                    = aws_iam_user.ext_priya_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_priya_ali__contractors" {
  user   = aws_iam_user.ext_priya_ali.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_priya_ali__notifications_analysts" {
  user   = aws_iam_user.ext_priya_ali.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user" "ext_quinn_rossi" {
  name = "axvel-1bmofe-ext-quinn.rossi"
}

resource "aws_iam_user_login_profile" "ext_quinn_rossi" {
  user                    = aws_iam_user.ext_quinn_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_quinn_rossi__contractors" {
  user   = aws_iam_user.ext_quinn_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_raj_sato" {
  name = "axvel-1bmofe-ext-raj.sato"
}

resource "aws_iam_user_login_profile" "ext_raj_sato" {
  user                    = aws_iam_user.ext_raj_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_sato__contractors" {
  user   = aws_iam_user.ext_raj_sato.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_sara_cohen" {
  name = "axvel-1bmofe-ext-sara.cohen"
}

resource "aws_iam_user_login_profile" "ext_sara_cohen" {
  user                    = aws_iam_user.ext_sara_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_sara_cohen__contractors" {
  user   = aws_iam_user.ext_sara_cohen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_sara_okafor" {
  name = "axvel-1bmofe-ext-sara.okafor"
}

resource "aws_iam_user_login_profile" "ext_sara_okafor" {
  user                    = aws_iam_user.ext_sara_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_sara_okafor__contractors" {
  user   = aws_iam_user.ext_sara_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_sara_okafor__data_6_analysts" {
  user   = aws_iam_user.ext_sara_okafor.name
  groups = [aws_iam_group.data_6_analysts.name]
}

resource "aws_iam_user" "ext_tom_nguyen" {
  name = "axvel-1bmofe-ext-tom.nguyen"
}

resource "aws_iam_user_login_profile" "ext_tom_nguyen" {
  user                    = aws_iam_user.ext_tom_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_tom_nguyen__contractors" {
  user   = aws_iam_user.ext_tom_nguyen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_tom_nguyen__mobile_7_analysts" {
  user   = aws_iam_user.ext_tom_nguyen.name
  groups = [aws_iam_group.mobile_7_analysts.name]
}

resource "aws_iam_user" "ext_vik_cohen" {
  name = "axvel-1bmofe-ext-vik.cohen"
}

resource "aws_iam_user_login_profile" "ext_vik_cohen" {
  user                    = aws_iam_user.ext_vik_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_vik_cohen__contractors" {
  user   = aws_iam_user.ext_vik_cohen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_policy_attachment" "ext_vik_cohen__inj_pol_p4" {
  user       = aws_iam_user.ext_vik_cohen.name
  policy_arn = aws_iam_policy.inj_pol_p4.arn
}

resource "aws_iam_user_policy_attachment" "ext_vik_cohen__inj_pol_p5" {
  user       = aws_iam_user.ext_vik_cohen.name
  policy_arn = aws_iam_policy.inj_pol_p5.arn
}

resource "aws_iam_user_policy_attachment" "ext_vik_cohen__inj_pol_p6" {
  user       = aws_iam_user.ext_vik_cohen.name
  policy_arn = aws_iam_policy.inj_pol_p6.arn
}

resource "aws_iam_user_policy_attachment" "ext_vik_cohen__inj_pol_p7" {
  user       = aws_iam_user.ext_vik_cohen.name
  policy_arn = aws_iam_policy.inj_pol_p7.arn
}

resource "aws_iam_user_policy_attachment" "ext_vik_cohen__inj_pol_p8" {
  user       = aws_iam_user.ext_vik_cohen.name
  policy_arn = aws_iam_policy.inj_pol_p8.arn
}

resource "aws_iam_user_policy_attachment" "ext_vik_cohen__inj_pol_p9" {
  user       = aws_iam_user.ext_vik_cohen.name
  policy_arn = aws_iam_policy.inj_pol_p9.arn
}

resource "aws_iam_user" "ext_wen_miller" {
  name = "axvel-1bmofe-ext-wen.miller"
}

resource "aws_iam_user_login_profile" "ext_wen_miller" {
  user                    = aws_iam_user.ext_wen_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_wen_miller__contractors" {
  user   = aws_iam_user.ext_wen_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_xia_kim" {
  name = "axvel-1bmofe-ext-xia.kim"
}

resource "aws_iam_user_login_profile" "ext_xia_kim" {
  user                    = aws_iam_user.ext_xia_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_xia_kim__contractors" {
  user   = aws_iam_user.ext_xia_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_xia_kim__auth_5_analysts" {
  user   = aws_iam_user.ext_xia_kim.name
  groups = [aws_iam_group.auth_5_analysts.name]
}

resource "aws_iam_user" "ext_xia_mehta" {
  name = "axvel-1bmofe-ext-xia.mehta"
}

resource "aws_iam_user_login_profile" "ext_xia_mehta" {
  user                    = aws_iam_user.ext_xia_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_xia_mehta__contractors" {
  user   = aws_iam_user.ext_xia_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_xia_mehta__api_2_analysts" {
  user   = aws_iam_user.ext_xia_mehta.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user" "ext_xia_silva" {
  name = "axvel-1bmofe-ext-xia.silva"
}

resource "aws_iam_user_login_profile" "ext_xia_silva" {
  user                    = aws_iam_user.ext_xia_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_xia_silva__contractors" {
  user   = aws_iam_user.ext_xia_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_xia_silva__growth_6_analysts" {
  user   = aws_iam_user.ext_xia_silva.name
  groups = [aws_iam_group.growth_6_analysts.name]
}

resource "aws_iam_user" "ext_xia_smith" {
  name = "axvel-1bmofe-ext-xia.smith"
}

resource "aws_iam_user_login_profile" "ext_xia_smith" {
  user                    = aws_iam_user.ext_xia_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_xia_smith__contractors" {
  user   = aws_iam_user.ext_xia_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_xia_smith__ml_analysts" {
  user   = aws_iam_user.ext_xia_smith.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "ext_yara_kim" {
  name = "axvel-1bmofe-ext-yara.kim"
}

resource "aws_iam_user_login_profile" "ext_yara_kim" {
  user                    = aws_iam_user.ext_yara_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_yara_kim__contractors" {
  user   = aws_iam_user.ext_yara_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_zed_patel" {
  name = "axvel-1bmofe-ext-zed.patel"
}

resource "aws_iam_user_login_profile" "ext_zed_patel" {
  user                    = aws_iam_user.ext_zed_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_zed_patel__contractors" {
  user   = aws_iam_user.ext_zed_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_zed_patel__support_analysts" {
  user   = aws_iam_user.ext_zed_patel.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "fay_brown" {
  name = "axvel-1bmofe-fay.brown"
}

resource "aws_iam_user_login_profile" "fay_brown" {
  user                    = aws_iam_user.fay_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_brown__search_analysts" {
  user   = aws_iam_user.fay_brown.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user_group_membership" "fay_brown__ml_4_analysts" {
  user   = aws_iam_user.fay_brown.name
  groups = [aws_iam_group.ml_4_analysts.name]
}

resource "aws_iam_user" "fay_chen" {
  name = "axvel-1bmofe-fay.chen"
}

resource "aws_iam_user_login_profile" "fay_chen" {
  user                    = aws_iam_user.fay_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_chen__api_2_analysts" {
  user   = aws_iam_user.fay_chen.name
  groups = [aws_iam_group.api_2_analysts.name]
}

resource "aws_iam_user_group_membership" "fay_chen__data_4_analysts" {
  user   = aws_iam_user.fay_chen.name
  groups = [aws_iam_group.data_4_analysts.name]
}

resource "aws_iam_user" "fay_gupta" {
  name = "axvel-1bmofe-fay.gupta"
}

resource "aws_iam_user_login_profile" "fay_gupta" {
  user                    = aws_iam_user.fay_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_gupta__mobile_6_analysts" {
  user   = aws_iam_user.fay_gupta.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "fay_jones" {
  name = "axvel-1bmofe-fay.jones"
}

resource "aws_iam_user_login_profile" "fay_jones" {
  user                    = aws_iam_user.fay_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_jones__auth_2_devs" {
  user   = aws_iam_user.fay_jones.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user_group_membership" "fay_jones__api_analysts" {
  user   = aws_iam_user.fay_jones.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "fay_jones67" {
  name = "axvel-1bmofe-fay.jones67"
}

resource "aws_iam_user_login_profile" "fay_jones67" {
  user                    = aws_iam_user.fay_jones67.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_jones67__data_7_devs" {
  user   = aws_iam_user.fay_jones67.name
  groups = [aws_iam_group.data_7_devs.name]
}

resource "aws_iam_user_group_membership" "fay_jones67__infra_2_analysts" {
  user   = aws_iam_user.fay_jones67.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "fay_kim" {
  name = "axvel-1bmofe-fay.kim"
}

resource "aws_iam_user_login_profile" "fay_kim" {
  user                    = aws_iam_user.fay_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_kim__auth_5_devs" {
  user   = aws_iam_user.fay_kim.name
  groups = [aws_iam_group.auth_5_devs.name]
}

resource "aws_iam_user" "fay_larsen" {
  name = "axvel-1bmofe-fay.larsen"
}

resource "aws_iam_user_login_profile" "fay_larsen" {
  user                    = aws_iam_user.fay_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_larsen__support_devs" {
  user   = aws_iam_user.fay_larsen.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "fay_miller" {
  name = "axvel-1bmofe-fay.miller"
}

resource "aws_iam_user_login_profile" "fay_miller" {
  user                    = aws_iam_user.fay_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_miller__data_4_devs" {
  user   = aws_iam_user.fay_miller.name
  groups = [aws_iam_group.data_4_devs.name]
}

resource "aws_iam_user_group_membership" "fay_miller__data_3_analysts" {
  user   = aws_iam_user.fay_miller.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "fay_muller" {
  name = "axvel-1bmofe-fay.muller"
}

resource "aws_iam_user_login_profile" "fay_muller" {
  user                    = aws_iam_user.fay_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_muller__ml_3_devs" {
  user   = aws_iam_user.fay_muller.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user_group_membership" "fay_muller__mobile_6_analysts" {
  user   = aws_iam_user.fay_muller.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "fay_patel" {
  name = "axvel-1bmofe-fay.patel"
}

resource "aws_iam_user_login_profile" "fay_patel" {
  user                    = aws_iam_user.fay_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_patel__web_devs" {
  user   = aws_iam_user.fay_patel.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "fay_reddy" {
  name = "axvel-1bmofe-fay.reddy"
}

resource "aws_iam_user_login_profile" "fay_reddy" {
  user                    = aws_iam_user.fay_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_reddy__data_2_devs" {
  user   = aws_iam_user.fay_reddy.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user" "fay_smith" {
  name = "axvel-1bmofe-fay.smith"
}

resource "aws_iam_user_group_membership" "fay_smith__auth_2_devs" {
  user   = aws_iam_user.fay_smith.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user" "fay_tanaka" {
  name = "axvel-1bmofe-fay.tanaka"
}

resource "aws_iam_user_login_profile" "fay_tanaka" {
  user                    = aws_iam_user.fay_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_tanaka__auth_2_analysts" {
  user   = aws_iam_user.fay_tanaka.name
  groups = [aws_iam_group.auth_2_analysts.name]
}

resource "aws_iam_user_group_membership" "fay_tanaka__mobile_4_analysts" {
  user   = aws_iam_user.fay_tanaka.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "frank_chen" {
  name = "axvel-1bmofe-frank.chen"
}

resource "aws_iam_user_login_profile" "frank_chen" {
  user                    = aws_iam_user.frank_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_chen__api_devs" {
  user   = aws_iam_user.frank_chen.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "frank_ivanov" {
  name = "axvel-1bmofe-frank.ivanov"
}

resource "aws_iam_user_login_profile" "frank_ivanov" {
  user                    = aws_iam_user.frank_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_ivanov__mobile_6_analysts" {
  user   = aws_iam_user.frank_ivanov.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "frank_larsen" {
  name = "axvel-1bmofe-frank.larsen"
}

resource "aws_iam_user_login_profile" "frank_larsen" {
  user                    = aws_iam_user.frank_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_larsen__infra_4_devs" {
  user   = aws_iam_user.frank_larsen.name
  groups = [aws_iam_group.infra_4_devs.name]
}

resource "aws_iam_user" "frank_larsen1707" {
  name = "axvel-1bmofe-frank.larsen1707"
}

resource "aws_iam_user_login_profile" "frank_larsen1707" {
  user                    = aws_iam_user.frank_larsen1707.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_larsen1707__mobile_2_devs" {
  user   = aws_iam_user.frank_larsen1707.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "frank_lopez" {
  name = "axvel-1bmofe-frank.lopez"
}

resource "aws_iam_user_group_membership" "frank_lopez__support_4_devs" {
  user   = aws_iam_user.frank_lopez.name
  groups = [aws_iam_group.support_4_devs.name]
}

resource "aws_iam_user" "frank_mehta" {
  name = "axvel-1bmofe-frank.mehta"
}

resource "aws_iam_user_login_profile" "frank_mehta" {
  user                    = aws_iam_user.frank_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_mehta__data_3_analysts" {
  user   = aws_iam_user.frank_mehta.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "frank_novak" {
  name = "axvel-1bmofe-frank.novak"
}

resource "aws_iam_user_login_profile" "frank_novak" {
  user                    = aws_iam_user.frank_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_novak__api_6_devs" {
  user   = aws_iam_user.frank_novak.name
  groups = [aws_iam_group.api_6_devs.name]
}

resource "aws_iam_user" "frank_reddy" {
  name = "axvel-1bmofe-frank.reddy"
}

resource "aws_iam_user_group_membership" "frank_reddy__ml_3_devs" {
  user   = aws_iam_user.frank_reddy.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user" "frank_rossi" {
  name = "axvel-1bmofe-frank.rossi"
}

resource "aws_iam_user_login_profile" "frank_rossi" {
  user                    = aws_iam_user.frank_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_rossi__notifications_2_devs" {
  user   = aws_iam_user.frank_rossi.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "frank_silva" {
  name = "axvel-1bmofe-frank.silva"
}

resource "aws_iam_user_login_profile" "frank_silva" {
  user                    = aws_iam_user.frank_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_silva__data_7_devs" {
  user   = aws_iam_user.frank_silva.name
  groups = [aws_iam_group.data_7_devs.name]
}

resource "aws_iam_user" "frank_smith" {
  name = "axvel-1bmofe-frank.smith"
}

resource "aws_iam_user_login_profile" "frank_smith" {
  user                    = aws_iam_user.frank_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_smith__support_5_devs" {
  user   = aws_iam_user.frank_smith.name
  groups = [aws_iam_group.support_5_devs.name]
}

resource "aws_iam_user_group_membership" "frank_smith__data_3_analysts" {
  user   = aws_iam_user.frank_smith.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "frank_tanaka" {
  name = "axvel-1bmofe-frank.tanaka"
}

resource "aws_iam_user_group_membership" "frank_tanaka__notifications_6_analysts" {
  user   = aws_iam_user.frank_tanaka.name
  groups = [aws_iam_group.notifications_6_analysts.name]
}

resource "aws_iam_user" "frank_tanaka873" {
  name = "axvel-1bmofe-frank.tanaka873"
}

resource "aws_iam_user_group_membership" "frank_tanaka873__data_7_analysts" {
  user   = aws_iam_user.frank_tanaka873.name
  groups = [aws_iam_group.data_7_analysts.name]
}

resource "aws_iam_user" "grace_ali" {
  name = "axvel-1bmofe-grace.ali"
}

resource "aws_iam_user_login_profile" "grace_ali" {
  user                    = aws_iam_user.grace_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_ali__ml_6_devs" {
  user   = aws_iam_user.grace_ali.name
  groups = [aws_iam_group.ml_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "grace_ali__base_readonly" {
  user       = aws_iam_user.grace_ali.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "grace_cohen" {
  name = "axvel-1bmofe-grace.cohen"
}

resource "aws_iam_user_login_profile" "grace_cohen" {
  user                    = aws_iam_user.grace_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_cohen__ml_5_devs" {
  user   = aws_iam_user.grace_cohen.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "grace_dubois" {
  name = "axvel-1bmofe-grace.dubois"
}

resource "aws_iam_user_login_profile" "grace_dubois" {
  user                    = aws_iam_user.grace_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_dubois__billing_2_devs" {
  user   = aws_iam_user.grace_dubois.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user_group_membership" "grace_dubois__api_4_analysts" {
  user   = aws_iam_user.grace_dubois.name
  groups = [aws_iam_group.api_4_analysts.name]
}

resource "aws_iam_user" "grace_haddad" {
  name = "axvel-1bmofe-grace.haddad"
}

resource "aws_iam_user_login_profile" "grace_haddad" {
  user                    = aws_iam_user.grace_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_haddad__web_6_analysts" {
  user   = aws_iam_user.grace_haddad.name
  groups = [aws_iam_group.web_6_analysts.name]
}

resource "aws_iam_user" "grace_nguyen" {
  name = "axvel-1bmofe-grace.nguyen"
}

resource "aws_iam_user_login_profile" "grace_nguyen" {
  user                    = aws_iam_user.grace_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_nguyen__auth_3_analysts" {
  user   = aws_iam_user.grace_nguyen.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user_group_membership" "grace_nguyen__search_4_analysts" {
  user   = aws_iam_user.grace_nguyen.name
  groups = [aws_iam_group.search_4_analysts.name]
}

resource "aws_iam_user" "grace_patel" {
  name = "axvel-1bmofe-grace.patel"
}

resource "aws_iam_user_login_profile" "grace_patel" {
  user                    = aws_iam_user.grace_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_patel__support_6_devs" {
  user   = aws_iam_user.grace_patel.name
  groups = [aws_iam_group.support_6_devs.name]
}

resource "aws_iam_user" "grace_wong" {
  name = "axvel-1bmofe-grace.wong"
}

resource "aws_iam_user_login_profile" "grace_wong" {
  user                    = aws_iam_user.grace_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_wong__search_4_devs" {
  user   = aws_iam_user.grace_wong.name
  groups = [aws_iam_group.search_4_devs.name]
}

resource "aws_iam_user" "grace_wong4302" {
  name = "axvel-1bmofe-grace.wong4302"
}

resource "aws_iam_user_login_profile" "grace_wong4302" {
  user                    = aws_iam_user.grace_wong4302.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_wong4302__growth_devs" {
  user   = aws_iam_user.grace_wong4302.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "gus_chen" {
  name = "axvel-1bmofe-gus.chen"
}

resource "aws_iam_user_login_profile" "gus_chen" {
  user                    = aws_iam_user.gus_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_chen__support_6_devs" {
  user   = aws_iam_user.gus_chen.name
  groups = [aws_iam_group.support_6_devs.name]
}

resource "aws_iam_user" "gus_davis" {
  name = "axvel-1bmofe-gus.davis"
}

resource "aws_iam_user_login_profile" "gus_davis" {
  user                    = aws_iam_user.gus_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_davis__auth_5_devs" {
  user   = aws_iam_user.gus_davis.name
  groups = [aws_iam_group.auth_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "gus_davis__base_readonly" {
  user       = aws_iam_user.gus_davis.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "gus_davis5946" {
  name = "axvel-1bmofe-gus.davis5946"
}

resource "aws_iam_user_login_profile" "gus_davis5946" {
  user                    = aws_iam_user.gus_davis5946.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_davis5946__billing_7_devs" {
  user   = aws_iam_user.gus_davis5946.name
  groups = [aws_iam_group.billing_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "gus_davis5946__base_readonly" {
  user       = aws_iam_user.gus_davis5946.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "gus_garcia" {
  name = "axvel-1bmofe-gus.garcia"
}

resource "aws_iam_user_login_profile" "gus_garcia" {
  user                    = aws_iam_user.gus_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_garcia__mobile_3_devs" {
  user   = aws_iam_user.gus_garcia.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "gus_haddad" {
  name = "axvel-1bmofe-gus.haddad"
}

resource "aws_iam_user_group_membership" "gus_haddad__ml_4_analysts" {
  user   = aws_iam_user.gus_haddad.name
  groups = [aws_iam_group.ml_4_analysts.name]
}

resource "aws_iam_user_group_membership" "gus_haddad__growth_7_analysts" {
  user   = aws_iam_user.gus_haddad.name
  groups = [aws_iam_group.growth_7_analysts.name]
}

resource "aws_iam_user" "gus_jones" {
  name = "axvel-1bmofe-gus.jones"
}

resource "aws_iam_user_login_profile" "gus_jones" {
  user                    = aws_iam_user.gus_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_jones__billing_6_devs" {
  user   = aws_iam_user.gus_jones.name
  groups = [aws_iam_group.billing_6_devs.name]
}

resource "aws_iam_user" "gus_kim" {
  name = "axvel-1bmofe-gus.kim"
}

resource "aws_iam_user_login_profile" "gus_kim" {
  user                    = aws_iam_user.gus_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_kim__ml_5_devs" {
  user   = aws_iam_user.gus_kim.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "gus_larsen" {
  name = "axvel-1bmofe-gus.larsen"
}

resource "aws_iam_user_login_profile" "gus_larsen" {
  user                    = aws_iam_user.gus_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_larsen__search_6_analysts" {
  user   = aws_iam_user.gus_larsen.name
  groups = [aws_iam_group.search_6_analysts.name]
}

resource "aws_iam_user" "gus_larsen3682" {
  name = "axvel-1bmofe-gus.larsen3682"
}

resource "aws_iam_user_login_profile" "gus_larsen3682" {
  user                    = aws_iam_user.gus_larsen3682.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_larsen3682__growth_4_devs" {
  user   = aws_iam_user.gus_larsen3682.name
  groups = [aws_iam_group.growth_4_devs.name]
}

resource "aws_iam_user_group_membership" "gus_larsen3682__billing_3_analysts" {
  user   = aws_iam_user.gus_larsen3682.name
  groups = [aws_iam_group.billing_3_analysts.name]
}

resource "aws_iam_user" "gus_rossi" {
  name = "axvel-1bmofe-gus.rossi"
}

resource "aws_iam_user_login_profile" "gus_rossi" {
  user                    = aws_iam_user.gus_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_rossi__ml_5_devs" {
  user   = aws_iam_user.gus_rossi.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "gus_smith" {
  name = "axvel-1bmofe-gus.smith"
}

resource "aws_iam_user_group_membership" "gus_smith__ml_6_devs" {
  user   = aws_iam_user.gus_smith.name
  groups = [aws_iam_group.ml_6_devs.name]
}

resource "aws_iam_user_group_membership" "gus_smith__billing_6_analysts" {
  user   = aws_iam_user.gus_smith.name
  groups = [aws_iam_group.billing_6_analysts.name]
}

resource "aws_iam_user" "hana_chen" {
  name = "axvel-1bmofe-hana.chen"
}

resource "aws_iam_user_login_profile" "hana_chen" {
  user                    = aws_iam_user.hana_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_chen__web_2_devs" {
  user   = aws_iam_user.hana_chen.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "hana_garcia" {
  name = "axvel-1bmofe-hana.garcia"
}

resource "aws_iam_user_login_profile" "hana_garcia" {
  user                    = aws_iam_user.hana_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_garcia__ml_5_devs" {
  user   = aws_iam_user.hana_garcia.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "hana_ivanov" {
  name = "axvel-1bmofe-hana.ivanov"
}

resource "aws_iam_user_login_profile" "hana_ivanov" {
  user                    = aws_iam_user.hana_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_ivanov__support_devs" {
  user   = aws_iam_user.hana_ivanov.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user" "hana_jones" {
  name = "axvel-1bmofe-hana.jones"
}

resource "aws_iam_user_login_profile" "hana_jones" {
  user                    = aws_iam_user.hana_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_jones__data_4_devs" {
  user   = aws_iam_user.hana_jones.name
  groups = [aws_iam_group.data_4_devs.name]
}

resource "aws_iam_user" "hana_jones15" {
  name = "axvel-1bmofe-hana.jones15"
}

resource "aws_iam_user_group_membership" "hana_jones15__ml_5_devs" {
  user   = aws_iam_user.hana_jones15.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user_group_membership" "hana_jones15__api_analysts" {
  user   = aws_iam_user.hana_jones15.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user" "hana_khan" {
  name = "axvel-1bmofe-hana.khan"
}

resource "aws_iam_user_group_membership" "hana_khan__web_4_devs" {
  user   = aws_iam_user.hana_khan.name
  groups = [aws_iam_group.web_4_devs.name]
}

resource "aws_iam_user" "hana_mehta" {
  name = "axvel-1bmofe-hana.mehta"
}

resource "aws_iam_user_login_profile" "hana_mehta" {
  user                    = aws_iam_user.hana_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_mehta__data_2_analysts" {
  user   = aws_iam_user.hana_mehta.name
  groups = [aws_iam_group.data_2_analysts.name]
}

resource "aws_iam_user_group_membership" "hana_mehta__infra_7_analysts" {
  user   = aws_iam_user.hana_mehta.name
  groups = [aws_iam_group.infra_7_analysts.name]
}

resource "aws_iam_user" "hana_mehta496" {
  name = "axvel-1bmofe-hana.mehta496"
}

resource "aws_iam_user_login_profile" "hana_mehta496" {
  user                    = aws_iam_user.hana_mehta496.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_mehta496__api_5_analysts" {
  user   = aws_iam_user.hana_mehta496.name
  groups = [aws_iam_group.api_5_analysts.name]
}

resource "aws_iam_user_group_membership" "hana_mehta496__billing_4_analysts" {
  user   = aws_iam_user.hana_mehta496.name
  groups = [aws_iam_group.billing_4_analysts.name]
}

resource "aws_iam_user" "hana_mehta6429" {
  name = "axvel-1bmofe-hana.mehta6429"
}

resource "aws_iam_user_login_profile" "hana_mehta6429" {
  user                    = aws_iam_user.hana_mehta6429.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_mehta6429__mobile_5_devs" {
  user   = aws_iam_user.hana_mehta6429.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user_group_membership" "hana_mehta6429__auth_6_analysts" {
  user   = aws_iam_user.hana_mehta6429.name
  groups = [aws_iam_group.auth_6_analysts.name]
}

resource "aws_iam_user" "hana_muller" {
  name = "axvel-1bmofe-hana.muller"
}

resource "aws_iam_user_login_profile" "hana_muller" {
  user                    = aws_iam_user.hana_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_muller__infra_2_devs" {
  user   = aws_iam_user.hana_muller.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user" "hana_nguyen" {
  name = "axvel-1bmofe-hana.nguyen"
}

resource "aws_iam_user_login_profile" "hana_nguyen" {
  user                    = aws_iam_user.hana_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_nguyen__infra_4_devs" {
  user   = aws_iam_user.hana_nguyen.name
  groups = [aws_iam_group.infra_4_devs.name]
}

resource "aws_iam_user" "hana_reddy" {
  name = "axvel-1bmofe-hana.reddy"
}

resource "aws_iam_user_login_profile" "hana_reddy" {
  user                    = aws_iam_user.hana_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_reddy__notifications_3_devs" {
  user   = aws_iam_user.hana_reddy.name
  groups = [aws_iam_group.notifications_3_devs.name]
}

resource "aws_iam_user" "hana_tanaka" {
  name = "axvel-1bmofe-hana.tanaka"
}

resource "aws_iam_user_login_profile" "hana_tanaka" {
  user                    = aws_iam_user.hana_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_tanaka__mobile_2_analysts" {
  user   = aws_iam_user.hana_tanaka.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "heidi_ivanov" {
  name = "axvel-1bmofe-heidi.ivanov"
}

resource "aws_iam_user_login_profile" "heidi_ivanov" {
  user                    = aws_iam_user.heidi_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_ivanov__data_3_devs" {
  user   = aws_iam_user.heidi_ivanov.name
  groups = [aws_iam_group.data_3_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_ivanov__support_4_analysts" {
  user   = aws_iam_user.heidi_ivanov.name
  groups = [aws_iam_group.support_4_analysts.name]
}

resource "aws_iam_user" "heidi_kim" {
  name = "axvel-1bmofe-heidi.kim"
}

resource "aws_iam_user_group_membership" "heidi_kim__growth_analysts" {
  user   = aws_iam_user.heidi_kim.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "heidi_larsen" {
  name = "axvel-1bmofe-heidi.larsen"
}

resource "aws_iam_user_login_profile" "heidi_larsen" {
  user                    = aws_iam_user.heidi_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_larsen__growth_7_devs" {
  user   = aws_iam_user.heidi_larsen.name
  groups = [aws_iam_group.growth_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "heidi_larsen__base_readonly" {
  user       = aws_iam_user.heidi_larsen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "heidi_lopez" {
  name = "axvel-1bmofe-heidi.lopez"
}

resource "aws_iam_user_login_profile" "heidi_lopez" {
  user                    = aws_iam_user.heidi_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_lopez__ml_6_analysts" {
  user   = aws_iam_user.heidi_lopez.name
  groups = [aws_iam_group.ml_6_analysts.name]
}

resource "aws_iam_user" "heidi_novak" {
  name = "axvel-1bmofe-heidi.novak"
}

resource "aws_iam_user_login_profile" "heidi_novak" {
  user                    = aws_iam_user.heidi_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_novak__billing_7_devs" {
  user   = aws_iam_user.heidi_novak.name
  groups = [aws_iam_group.billing_7_devs.name]
}

resource "aws_iam_user" "heidi_patel" {
  name = "axvel-1bmofe-heidi.patel"
}

resource "aws_iam_user_login_profile" "heidi_patel" {
  user                    = aws_iam_user.heidi_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_patel__web_2_analysts" {
  user   = aws_iam_user.heidi_patel.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "heidi_rossi" {
  name = "axvel-1bmofe-heidi.rossi"
}

resource "aws_iam_user_login_profile" "heidi_rossi" {
  user                    = aws_iam_user.heidi_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_rossi__ml_6_devs" {
  user   = aws_iam_user.heidi_rossi.name
  groups = [aws_iam_group.ml_6_devs.name]
}

resource "aws_iam_user" "heidi_silva" {
  name = "axvel-1bmofe-heidi.silva"
}

resource "aws_iam_user_login_profile" "heidi_silva" {
  user                    = aws_iam_user.heidi_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_silva__mobile_5_devs" {
  user   = aws_iam_user.heidi_silva.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user" "heidi_tanaka" {
  name = "axvel-1bmofe-heidi.tanaka"
}

resource "aws_iam_user_login_profile" "heidi_tanaka" {
  user                    = aws_iam_user.heidi_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_tanaka__billing_4_analysts" {
  user   = aws_iam_user.heidi_tanaka.name
  groups = [aws_iam_group.billing_4_analysts.name]
}

resource "aws_iam_user" "heidi_tanaka7267" {
  name = "axvel-1bmofe-heidi.tanaka7267"
}

resource "aws_iam_user_login_profile" "heidi_tanaka7267" {
  user                    = aws_iam_user.heidi_tanaka7267.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_tanaka7267__growth_devs" {
  user   = aws_iam_user.heidi_tanaka7267.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "heidi_wong" {
  name = "axvel-1bmofe-heidi.wong"
}

resource "aws_iam_user_login_profile" "heidi_wong" {
  user                    = aws_iam_user.heidi_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_wong__web_7_devs" {
  user   = aws_iam_user.heidi_wong.name
  groups = [aws_iam_group.web_7_devs.name]
}

resource "aws_iam_user" "ian_chen" {
  name = "axvel-1bmofe-ian.chen"
}

resource "aws_iam_user_login_profile" "ian_chen" {
  user                    = aws_iam_user.ian_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_chen__billing_7_devs" {
  user   = aws_iam_user.ian_chen.name
  groups = [aws_iam_group.billing_7_devs.name]
}

resource "aws_iam_user" "ian_davis" {
  name = "axvel-1bmofe-ian.davis"
}

resource "aws_iam_user_login_profile" "ian_davis" {
  user                    = aws_iam_user.ian_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_davis__notifications_2_devs" {
  user   = aws_iam_user.ian_davis.name
  groups = [aws_iam_group.notifications_2_devs.name]
}

resource "aws_iam_user" "ian_dubois" {
  name = "axvel-1bmofe-ian.dubois"
}

resource "aws_iam_user_login_profile" "ian_dubois" {
  user                    = aws_iam_user.ian_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_dubois__mobile_2_analysts" {
  user   = aws_iam_user.ian_dubois.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ian_dubois__base_readonly" {
  user       = aws_iam_user.ian_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ian_garcia" {
  name = "axvel-1bmofe-ian.garcia"
}

resource "aws_iam_user_login_profile" "ian_garcia" {
  user                    = aws_iam_user.ian_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_garcia__infra_analysts" {
  user   = aws_iam_user.ian_garcia.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "ian_haddad" {
  name = "axvel-1bmofe-ian.haddad"
}

resource "aws_iam_user_login_profile" "ian_haddad" {
  user                    = aws_iam_user.ian_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_haddad__mobile_3_analysts" {
  user   = aws_iam_user.ian_haddad.name
  groups = [aws_iam_group.mobile_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ian_haddad__base_readonly" {
  user       = aws_iam_user.ian_haddad.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ian_haddad2911" {
  name = "axvel-1bmofe-ian.haddad2911"
}

resource "aws_iam_user_login_profile" "ian_haddad2911" {
  user                    = aws_iam_user.ian_haddad2911.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_haddad2911__growth_2_analysts" {
  user   = aws_iam_user.ian_haddad2911.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "ian_haddad6877" {
  name = "axvel-1bmofe-ian.haddad6877"
}

resource "aws_iam_user_login_profile" "ian_haddad6877" {
  user                    = aws_iam_user.ian_haddad6877.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_haddad6877__mobile_4_devs" {
  user   = aws_iam_user.ian_haddad6877.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "ian_larsen" {
  name = "axvel-1bmofe-ian.larsen"
}

resource "aws_iam_user_login_profile" "ian_larsen" {
  user                    = aws_iam_user.ian_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_larsen__auth_3_devs" {
  user   = aws_iam_user.ian_larsen.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user" "ian_lopez" {
  name = "axvel-1bmofe-ian.lopez"
}

resource "aws_iam_user_login_profile" "ian_lopez" {
  user                    = aws_iam_user.ian_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_lopez__auth_6_analysts" {
  user   = aws_iam_user.ian_lopez.name
  groups = [aws_iam_group.auth_6_analysts.name]
}

resource "aws_iam_user" "ian_miller" {
  name = "axvel-1bmofe-ian.miller"
}

resource "aws_iam_user_login_profile" "ian_miller" {
  user                    = aws_iam_user.ian_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_miller__growth_7_analysts" {
  user   = aws_iam_user.ian_miller.name
  groups = [aws_iam_group.growth_7_analysts.name]
}

resource "aws_iam_user" "ian_singh" {
  name = "axvel-1bmofe-ian.singh"
}

resource "aws_iam_user_group_membership" "ian_singh__mobile_6_devs" {
  user   = aws_iam_user.ian_singh.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "ian_singh__base_readonly" {
  user       = aws_iam_user.ian_singh.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ian_smith" {
  name = "axvel-1bmofe-ian.smith"
}

resource "aws_iam_user_login_profile" "ian_smith" {
  user                    = aws_iam_user.ian_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_smith__api_5_devs" {
  user   = aws_iam_user.ian_smith.name
  groups = [aws_iam_group.api_5_devs.name]
}

resource "aws_iam_user" "inj_svc_u3" {
  name = "axvel-1bmofe-inj-svc-u3"
}

resource "aws_iam_user" "ivan_ali" {
  name = "axvel-1bmofe-ivan.ali"
}

resource "aws_iam_user_group_membership" "ivan_ali__infra_3_analysts" {
  user   = aws_iam_user.ivan_ali.name
  groups = [aws_iam_group.infra_3_analysts.name]
}

resource "aws_iam_user" "ivan_brown" {
  name = "axvel-1bmofe-ivan.brown"
}

resource "aws_iam_user_login_profile" "ivan_brown" {
  user                    = aws_iam_user.ivan_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_brown__mobile_devs" {
  user   = aws_iam_user.ivan_brown.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_brown__search_2_analysts" {
  user   = aws_iam_user.ivan_brown.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ivan_brown__base_readonly" {
  user       = aws_iam_user.ivan_brown.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ivan_dubois" {
  name = "axvel-1bmofe-ivan.dubois"
}

resource "aws_iam_user_login_profile" "ivan_dubois" {
  user                    = aws_iam_user.ivan_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_dubois__search_devs" {
  user   = aws_iam_user.ivan_dubois.name
  groups = [aws_iam_group.search_devs.name]
}

resource "aws_iam_user" "ivan_garcia" {
  name = "axvel-1bmofe-ivan.garcia"
}

resource "aws_iam_user_login_profile" "ivan_garcia" {
  user                    = aws_iam_user.ivan_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_garcia__auth_2_devs" {
  user   = aws_iam_user.ivan_garcia.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_garcia__web_6_analysts" {
  user   = aws_iam_user.ivan_garcia.name
  groups = [aws_iam_group.web_6_analysts.name]
}

resource "aws_iam_user" "ivan_garcia6489" {
  name = "axvel-1bmofe-ivan.garcia6489"
}

resource "aws_iam_user_login_profile" "ivan_garcia6489" {
  user                    = aws_iam_user.ivan_garcia6489.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_garcia6489__support_2_devs" {
  user   = aws_iam_user.ivan_garcia6489.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_garcia6489__growth_analysts" {
  user   = aws_iam_user.ivan_garcia6489.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "ivan_ivanov" {
  name = "axvel-1bmofe-ivan.ivanov"
}

resource "aws_iam_user_login_profile" "ivan_ivanov" {
  user                    = aws_iam_user.ivan_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_ivanov__mobile_devs" {
  user   = aws_iam_user.ivan_ivanov.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "ivan_kim" {
  name = "axvel-1bmofe-ivan.kim"
}

resource "aws_iam_user_login_profile" "ivan_kim" {
  user                    = aws_iam_user.ivan_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_kim__api_4_devs" {
  user   = aws_iam_user.ivan_kim.name
  groups = [aws_iam_group.api_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "ivan_kim__base_readonly" {
  user       = aws_iam_user.ivan_kim.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ivan_lopez" {
  name = "axvel-1bmofe-ivan.lopez"
}

resource "aws_iam_user_login_profile" "ivan_lopez" {
  user                    = aws_iam_user.ivan_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_lopez__web_2_devs" {
  user   = aws_iam_user.ivan_lopez.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "ivan_lopez911" {
  name = "axvel-1bmofe-ivan.lopez911"
}

resource "aws_iam_user_login_profile" "ivan_lopez911" {
  user                    = aws_iam_user.ivan_lopez911.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_lopez911__web_6_devs" {
  user   = aws_iam_user.ivan_lopez911.name
  groups = [aws_iam_group.web_6_devs.name]
}

resource "aws_iam_user" "ivan_mehta" {
  name = "axvel-1bmofe-ivan.mehta"
}

resource "aws_iam_user_login_profile" "ivan_mehta" {
  user                    = aws_iam_user.ivan_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_mehta__auth_5_analysts" {
  user   = aws_iam_user.ivan_mehta.name
  groups = [aws_iam_group.auth_5_analysts.name]
}

resource "aws_iam_user" "ivan_mehta5169" {
  name = "axvel-1bmofe-ivan.mehta5169"
}

resource "aws_iam_user_login_profile" "ivan_mehta5169" {
  user                    = aws_iam_user.ivan_mehta5169.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_mehta5169__notifications_5_devs" {
  user   = aws_iam_user.ivan_mehta5169.name
  groups = [aws_iam_group.notifications_5_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_mehta5169__support_5_analysts" {
  user   = aws_iam_user.ivan_mehta5169.name
  groups = [aws_iam_group.support_5_analysts.name]
}

resource "aws_iam_user" "ivan_muller" {
  name = "axvel-1bmofe-ivan.muller"
}

resource "aws_iam_user_login_profile" "ivan_muller" {
  user                    = aws_iam_user.ivan_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_muller__auth_devs" {
  user   = aws_iam_user.ivan_muller.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user" "ivan_nguyen" {
  name = "axvel-1bmofe-ivan.nguyen"
}

resource "aws_iam_user_login_profile" "ivan_nguyen" {
  user                    = aws_iam_user.ivan_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_nguyen__search_7_devs" {
  user   = aws_iam_user.ivan_nguyen.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user" "ivan_patel" {
  name = "axvel-1bmofe-ivan.patel"
}

resource "aws_iam_user_login_profile" "ivan_patel" {
  user                    = aws_iam_user.ivan_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_patel__billing_6_analysts" {
  user   = aws_iam_user.ivan_patel.name
  groups = [aws_iam_group.billing_6_analysts.name]
}

resource "aws_iam_user" "ivan_silva" {
  name = "axvel-1bmofe-ivan.silva"
}

resource "aws_iam_user_login_profile" "ivan_silva" {
  user                    = aws_iam_user.ivan_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_silva__billing_2_devs" {
  user   = aws_iam_user.ivan_silva.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "ivan_silva7258" {
  name = "axvel-1bmofe-ivan.silva7258"
}

resource "aws_iam_user_group_membership" "ivan_silva7258__search_6_devs" {
  user   = aws_iam_user.ivan_silva7258.name
  groups = [aws_iam_group.search_6_devs.name]
}

resource "aws_iam_user" "ivan_wong" {
  name = "axvel-1bmofe-ivan.wong"
}

resource "aws_iam_user_login_profile" "ivan_wong" {
  user                    = aws_iam_user.ivan_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_wong__mobile_4_devs" {
  user   = aws_iam_user.ivan_wong.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "judy_brown" {
  name = "axvel-1bmofe-judy.brown"
}

resource "aws_iam_user_login_profile" "judy_brown" {
  user                    = aws_iam_user.judy_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_brown__ml_2_devs" {
  user   = aws_iam_user.judy_brown.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user" "judy_chen" {
  name = "axvel-1bmofe-judy.chen"
}

resource "aws_iam_user_login_profile" "judy_chen" {
  user                    = aws_iam_user.judy_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_chen__web_5_analysts" {
  user   = aws_iam_user.judy_chen.name
  groups = [aws_iam_group.web_5_analysts.name]
}

resource "aws_iam_user" "judy_davis" {
  name = "axvel-1bmofe-judy.davis"
}

resource "aws_iam_user_login_profile" "judy_davis" {
  user                    = aws_iam_user.judy_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_davis__billing_5_analysts" {
  user   = aws_iam_user.judy_davis.name
  groups = [aws_iam_group.billing_5_analysts.name]
}

resource "aws_iam_user" "judy_dubois" {
  name = "axvel-1bmofe-judy.dubois"
}

resource "aws_iam_user_login_profile" "judy_dubois" {
  user                    = aws_iam_user.judy_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_dubois__mobile_5_devs" {
  user   = aws_iam_user.judy_dubois.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user_group_membership" "judy_dubois__web_6_analysts" {
  user   = aws_iam_user.judy_dubois.name
  groups = [aws_iam_group.web_6_analysts.name]
}

resource "aws_iam_user" "judy_haddad" {
  name = "axvel-1bmofe-judy.haddad"
}

resource "aws_iam_user_login_profile" "judy_haddad" {
  user                    = aws_iam_user.judy_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_haddad__notifications_2_analysts" {
  user   = aws_iam_user.judy_haddad.name
  groups = [aws_iam_group.notifications_2_analysts.name]
}

resource "aws_iam_user" "judy_khan" {
  name = "axvel-1bmofe-judy.khan"
}

resource "aws_iam_user_group_membership" "judy_khan__data_3_analysts" {
  user   = aws_iam_user.judy_khan.name
  groups = [aws_iam_group.data_3_analysts.name]
}

resource "aws_iam_user" "judy_reddy" {
  name = "axvel-1bmofe-judy.reddy"
}

resource "aws_iam_user_login_profile" "judy_reddy" {
  user                    = aws_iam_user.judy_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_reddy__web_2_devs" {
  user   = aws_iam_user.judy_reddy.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "judy_reddy__base_readonly" {
  user       = aws_iam_user.judy_reddy.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "judy_sato" {
  name = "axvel-1bmofe-judy.sato"
}

resource "aws_iam_user_login_profile" "judy_sato" {
  user                    = aws_iam_user.judy_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_sato__web_4_devs" {
  user   = aws_iam_user.judy_sato.name
  groups = [aws_iam_group.web_4_devs.name]
}

resource "aws_iam_user" "judy_singh" {
  name = "axvel-1bmofe-judy.singh"
}

resource "aws_iam_user_login_profile" "judy_singh" {
  user                    = aws_iam_user.judy_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_singh__search_5_analysts" {
  user   = aws_iam_user.judy_singh.name
  groups = [aws_iam_group.search_5_analysts.name]
}

resource "aws_iam_user" "judy_smith" {
  name = "axvel-1bmofe-judy.smith"
}

resource "aws_iam_user_login_profile" "judy_smith" {
  user                    = aws_iam_user.judy_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_smith__support_3_analysts" {
  user   = aws_iam_user.judy_smith.name
  groups = [aws_iam_group.support_3_analysts.name]
}

resource "aws_iam_user" "jun_brown" {
  name = "axvel-1bmofe-jun.brown"
}

resource "aws_iam_user_login_profile" "jun_brown" {
  user                    = aws_iam_user.jun_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_brown__api_6_analysts" {
  user   = aws_iam_user.jun_brown.name
  groups = [aws_iam_group.api_6_analysts.name]
}

resource "aws_iam_user_group_membership" "jun_brown__infra_4_analysts" {
  user   = aws_iam_user.jun_brown.name
  groups = [aws_iam_group.infra_4_analysts.name]
}

resource "aws_iam_user" "jun_davis" {
  name = "axvel-1bmofe-jun.davis"
}

resource "aws_iam_user_group_membership" "jun_davis__api_4_devs" {
  user   = aws_iam_user.jun_davis.name
  groups = [aws_iam_group.api_4_devs.name]
}

resource "aws_iam_user" "jun_dubois" {
  name = "axvel-1bmofe-jun.dubois"
}

resource "aws_iam_user_login_profile" "jun_dubois" {
  user                    = aws_iam_user.jun_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_dubois__notifications_5_devs" {
  user   = aws_iam_user.jun_dubois.name
  groups = [aws_iam_group.notifications_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "jun_dubois__base_readonly" {
  user       = aws_iam_user.jun_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "jun_garcia" {
  name = "axvel-1bmofe-jun.garcia"
}

resource "aws_iam_user_group_membership" "jun_garcia__infra_6_devs" {
  user   = aws_iam_user.jun_garcia.name
  groups = [aws_iam_group.infra_6_devs.name]
}

resource "aws_iam_user" "jun_haddad" {
  name = "axvel-1bmofe-jun.haddad"
}

resource "aws_iam_user_login_profile" "jun_haddad" {
  user                    = aws_iam_user.jun_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_haddad__support_6_devs" {
  user   = aws_iam_user.jun_haddad.name
  groups = [aws_iam_group.support_6_devs.name]
}

resource "aws_iam_user_group_membership" "jun_haddad__notifications_5_analysts" {
  user   = aws_iam_user.jun_haddad.name
  groups = [aws_iam_group.notifications_5_analysts.name]
}

resource "aws_iam_user" "jun_lopez" {
  name = "axvel-1bmofe-jun.lopez"
}

resource "aws_iam_user_login_profile" "jun_lopez" {
  user                    = aws_iam_user.jun_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_lopez__ml_2_devs" {
  user   = aws_iam_user.jun_lopez.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user_group_membership" "jun_lopez__growth_analysts" {
  user   = aws_iam_user.jun_lopez.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "jun_miller" {
  name = "axvel-1bmofe-jun.miller"
}

resource "aws_iam_user_group_membership" "jun_miller__api_7_devs" {
  user   = aws_iam_user.jun_miller.name
  groups = [aws_iam_group.api_7_devs.name]
}

resource "aws_iam_user" "jun_muller" {
  name = "axvel-1bmofe-jun.muller"
}

resource "aws_iam_user_login_profile" "jun_muller" {
  user                    = aws_iam_user.jun_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_muller__data_3_devs" {
  user   = aws_iam_user.jun_muller.name
  groups = [aws_iam_group.data_3_devs.name]
}

resource "aws_iam_user" "jun_patel" {
  name = "axvel-1bmofe-jun.patel"
}

resource "aws_iam_user_login_profile" "jun_patel" {
  user                    = aws_iam_user.jun_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_patel__growth_3_devs" {
  user   = aws_iam_user.jun_patel.name
  groups = [aws_iam_group.growth_3_devs.name]
}

resource "aws_iam_user" "jun_rossi" {
  name = "axvel-1bmofe-jun.rossi"
}

resource "aws_iam_user_login_profile" "jun_rossi" {
  user                    = aws_iam_user.jun_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_rossi__notifications_3_analysts" {
  user   = aws_iam_user.jun_rossi.name
  groups = [aws_iam_group.notifications_3_analysts.name]
}

resource "aws_iam_user_group_membership" "jun_rossi__search_5_analysts" {
  user   = aws_iam_user.jun_rossi.name
  groups = [aws_iam_group.search_5_analysts.name]
}

resource "aws_iam_user" "jun_sato" {
  name = "axvel-1bmofe-jun.sato"
}

resource "aws_iam_user_login_profile" "jun_sato" {
  user                    = aws_iam_user.jun_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_sato__growth_3_devs" {
  user   = aws_iam_user.jun_sato.name
  groups = [aws_iam_group.growth_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "jun_sato__base_readonly" {
  user       = aws_iam_user.jun_sato.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "jun_silva" {
  name = "axvel-1bmofe-jun.silva"
}

resource "aws_iam_user_group_membership" "jun_silva__notifications_3_devs" {
  user   = aws_iam_user.jun_silva.name
  groups = [aws_iam_group.notifications_3_devs.name]
}

resource "aws_iam_user" "jun_silva690" {
  name = "axvel-1bmofe-jun.silva690"
}

resource "aws_iam_user_login_profile" "jun_silva690" {
  user                    = aws_iam_user.jun_silva690.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_silva690__web_3_devs" {
  user   = aws_iam_user.jun_silva690.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user" "jun_tanaka" {
  name = "axvel-1bmofe-jun.tanaka"
}

resource "aws_iam_user_login_profile" "jun_tanaka" {
  user                    = aws_iam_user.jun_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_tanaka__growth_devs" {
  user   = aws_iam_user.jun_tanaka.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "karl_brown" {
  name = "axvel-1bmofe-karl.brown"
}

resource "aws_iam_user_group_membership" "karl_brown__ml_3_devs" {
  user   = aws_iam_user.karl_brown.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user_group_membership" "karl_brown__infra_7_analysts" {
  user   = aws_iam_user.karl_brown.name
  groups = [aws_iam_group.infra_7_analysts.name]
}

resource "aws_iam_user" "karl_brown8169" {
  name = "axvel-1bmofe-karl.brown8169"
}

resource "aws_iam_user_login_profile" "karl_brown8169" {
  user                    = aws_iam_user.karl_brown8169.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_brown8169__data_3_devs" {
  user   = aws_iam_user.karl_brown8169.name
  groups = [aws_iam_group.data_3_devs.name]
}

resource "aws_iam_user" "karl_chen" {
  name = "axvel-1bmofe-karl.chen"
}

resource "aws_iam_user_group_membership" "karl_chen__billing_5_analysts" {
  user   = aws_iam_user.karl_chen.name
  groups = [aws_iam_group.billing_5_analysts.name]
}

resource "aws_iam_user" "karl_cohen" {
  name = "axvel-1bmofe-karl.cohen"
}

resource "aws_iam_user_login_profile" "karl_cohen" {
  user                    = aws_iam_user.karl_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_cohen__auth_5_devs" {
  user   = aws_iam_user.karl_cohen.name
  groups = [aws_iam_group.auth_5_devs.name]
}

resource "aws_iam_user" "karl_cohen2523" {
  name = "axvel-1bmofe-karl.cohen2523"
}

resource "aws_iam_user_login_profile" "karl_cohen2523" {
  user                    = aws_iam_user.karl_cohen2523.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_cohen2523__billing_3_analysts" {
  user   = aws_iam_user.karl_cohen2523.name
  groups = [aws_iam_group.billing_3_analysts.name]
}

resource "aws_iam_user" "karl_davis" {
  name = "axvel-1bmofe-karl.davis"
}

resource "aws_iam_user_login_profile" "karl_davis" {
  user                    = aws_iam_user.karl_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_davis__growth_5_analysts" {
  user   = aws_iam_user.karl_davis.name
  groups = [aws_iam_group.growth_5_analysts.name]
}

resource "aws_iam_user" "karl_davis1863" {
  name = "axvel-1bmofe-karl.davis1863"
}

resource "aws_iam_user_login_profile" "karl_davis1863" {
  user                    = aws_iam_user.karl_davis1863.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_davis1863__support_3_devs" {
  user   = aws_iam_user.karl_davis1863.name
  groups = [aws_iam_group.support_3_devs.name]
}

resource "aws_iam_user" "karl_davis5987" {
  name = "axvel-1bmofe-karl.davis5987"
}

resource "aws_iam_user_group_membership" "karl_davis5987__mobile_2_devs" {
  user   = aws_iam_user.karl_davis5987.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "karl_dubois" {
  name = "axvel-1bmofe-karl.dubois"
}

resource "aws_iam_user_login_profile" "karl_dubois" {
  user                    = aws_iam_user.karl_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_dubois__infra_4_devs" {
  user   = aws_iam_user.karl_dubois.name
  groups = [aws_iam_group.infra_4_devs.name]
}

resource "aws_iam_user_group_membership" "karl_dubois__infra_2_analysts" {
  user   = aws_iam_user.karl_dubois.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "karl_haddad" {
  name = "axvel-1bmofe-karl.haddad"
}

resource "aws_iam_user_login_profile" "karl_haddad" {
  user                    = aws_iam_user.karl_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_haddad__auth_6_analysts" {
  user   = aws_iam_user.karl_haddad.name
  groups = [aws_iam_group.auth_6_analysts.name]
}

resource "aws_iam_user" "karl_ivanov" {
  name = "axvel-1bmofe-karl.ivanov"
}

resource "aws_iam_user_login_profile" "karl_ivanov" {
  user                    = aws_iam_user.karl_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_ivanov__notifications_3_devs" {
  user   = aws_iam_user.karl_ivanov.name
  groups = [aws_iam_group.notifications_3_devs.name]
}

resource "aws_iam_user" "karl_jones" {
  name = "axvel-1bmofe-karl.jones"
}

resource "aws_iam_user_login_profile" "karl_jones" {
  user                    = aws_iam_user.karl_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_jones__auth_analysts" {
  user   = aws_iam_user.karl_jones.name
  groups = [aws_iam_group.auth_analysts.name]
}

resource "aws_iam_user" "karl_jones6275" {
  name = "axvel-1bmofe-karl.jones6275"
}

resource "aws_iam_user_login_profile" "karl_jones6275" {
  user                    = aws_iam_user.karl_jones6275.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_jones6275__ml_5_analysts" {
  user   = aws_iam_user.karl_jones6275.name
  groups = [aws_iam_group.ml_5_analysts.name]
}

resource "aws_iam_user" "karl_larsen" {
  name = "axvel-1bmofe-karl.larsen"
}

resource "aws_iam_user_login_profile" "karl_larsen" {
  user                    = aws_iam_user.karl_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_larsen__data_devs" {
  user   = aws_iam_user.karl_larsen.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "karl_okafor" {
  name = "axvel-1bmofe-karl.okafor"
}

resource "aws_iam_user_group_membership" "karl_okafor__auth_2_devs" {
  user   = aws_iam_user.karl_okafor.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user" "karl_sato" {
  name = "axvel-1bmofe-karl.sato"
}

resource "aws_iam_user_login_profile" "karl_sato" {
  user                    = aws_iam_user.karl_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_sato__growth_4_devs" {
  user   = aws_iam_user.karl_sato.name
  groups = [aws_iam_group.growth_4_devs.name]
}

resource "aws_iam_user" "karl_silva" {
  name = "axvel-1bmofe-karl.silva"
}

resource "aws_iam_user_login_profile" "karl_silva" {
  user                    = aws_iam_user.karl_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_silva__search_2_analysts" {
  user   = aws_iam_user.karl_silva.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user_group_membership" "karl_silva__search_5_analysts" {
  user   = aws_iam_user.karl_silva.name
  groups = [aws_iam_group.search_5_analysts.name]
}

resource "aws_iam_user" "karl_singh" {
  name = "axvel-1bmofe-karl.singh"
}

resource "aws_iam_user_group_membership" "karl_singh__web_3_devs" {
  user   = aws_iam_user.karl_singh.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user" "karl_smith" {
  name = "axvel-1bmofe-karl.smith"
}

resource "aws_iam_user_login_profile" "karl_smith" {
  user                    = aws_iam_user.karl_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_smith__ml_3_devs" {
  user   = aws_iam_user.karl_smith.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "karl_smith__base_readonly" {
  user       = aws_iam_user.karl_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "karl_tanaka" {
  name = "axvel-1bmofe-karl.tanaka"
}

resource "aws_iam_user_login_profile" "karl_tanaka" {
  user                    = aws_iam_user.karl_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_tanaka__support_2_analysts" {
  user   = aws_iam_user.karl_tanaka.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user_group_membership" "karl_tanaka__mobile_4_analysts" {
  user   = aws_iam_user.karl_tanaka.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "kia_cohen" {
  name = "axvel-1bmofe-kia.cohen"
}

resource "aws_iam_user_login_profile" "kia_cohen" {
  user                    = aws_iam_user.kia_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_cohen__mobile_6_devs" {
  user   = aws_iam_user.kia_cohen.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user" "kia_nguyen" {
  name = "axvel-1bmofe-kia.nguyen"
}

resource "aws_iam_user_group_membership" "kia_nguyen__search_5_devs" {
  user   = aws_iam_user.kia_nguyen.name
  groups = [aws_iam_group.search_5_devs.name]
}

resource "aws_iam_user" "kia_novak" {
  name = "axvel-1bmofe-kia.novak"
}

resource "aws_iam_user_login_profile" "kia_novak" {
  user                    = aws_iam_user.kia_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_novak__web_5_analysts" {
  user   = aws_iam_user.kia_novak.name
  groups = [aws_iam_group.web_5_analysts.name]
}

resource "aws_iam_user" "kia_novak1582" {
  name = "axvel-1bmofe-kia.novak1582"
}

resource "aws_iam_user_group_membership" "kia_novak1582__auth_4_analysts" {
  user   = aws_iam_user.kia_novak1582.name
  groups = [aws_iam_group.auth_4_analysts.name]
}

resource "aws_iam_user" "kia_okafor" {
  name = "axvel-1bmofe-kia.okafor"
}

resource "aws_iam_user_login_profile" "kia_okafor" {
  user                    = aws_iam_user.kia_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_okafor__data_5_analysts" {
  user   = aws_iam_user.kia_okafor.name
  groups = [aws_iam_group.data_5_analysts.name]
}

resource "aws_iam_user_group_membership" "kia_okafor__mobile_7_analysts" {
  user   = aws_iam_user.kia_okafor.name
  groups = [aws_iam_group.mobile_7_analysts.name]
}

resource "aws_iam_user" "kia_rossi" {
  name = "axvel-1bmofe-kia.rossi"
}

resource "aws_iam_user_login_profile" "kia_rossi" {
  user                    = aws_iam_user.kia_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_rossi__web_4_devs" {
  user   = aws_iam_user.kia_rossi.name
  groups = [aws_iam_group.web_4_devs.name]
}

resource "aws_iam_user" "kia_rossi7995" {
  name = "axvel-1bmofe-kia.rossi7995"
}

resource "aws_iam_user_login_profile" "kia_rossi7995" {
  user                    = aws_iam_user.kia_rossi7995.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_rossi7995__billing_5_devs" {
  user   = aws_iam_user.kia_rossi7995.name
  groups = [aws_iam_group.billing_5_devs.name]
}

resource "aws_iam_user" "kia_sato" {
  name = "axvel-1bmofe-kia.sato"
}

resource "aws_iam_user_login_profile" "kia_sato" {
  user                    = aws_iam_user.kia_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_sato__billing_3_devs" {
  user   = aws_iam_user.kia_sato.name
  groups = [aws_iam_group.billing_3_devs.name]
}

resource "aws_iam_user_group_membership" "kia_sato__mobile_4_analysts" {
  user   = aws_iam_user.kia_sato.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "kia_silva" {
  name = "axvel-1bmofe-kia.silva"
}

resource "aws_iam_user_login_profile" "kia_silva" {
  user                    = aws_iam_user.kia_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_silva__api_7_analysts" {
  user   = aws_iam_user.kia_silva.name
  groups = [aws_iam_group.api_7_analysts.name]
}

resource "aws_iam_user" "kia_smith" {
  name = "axvel-1bmofe-kia.smith"
}

resource "aws_iam_user_group_membership" "kia_smith__api_2_devs" {
  user   = aws_iam_user.kia_smith.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "lena_chen" {
  name = "axvel-1bmofe-lena.chen"
}

resource "aws_iam_user_login_profile" "lena_chen" {
  user                    = aws_iam_user.lena_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_chen__search_4_devs" {
  user   = aws_iam_user.lena_chen.name
  groups = [aws_iam_group.search_4_devs.name]
}

resource "aws_iam_user_group_membership" "lena_chen__support_2_analysts" {
  user   = aws_iam_user.lena_chen.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "lena_chen__base_readonly" {
  user       = aws_iam_user.lena_chen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "lena_chen4075" {
  name = "axvel-1bmofe-lena.chen4075"
}

resource "aws_iam_user_login_profile" "lena_chen4075" {
  user                    = aws_iam_user.lena_chen4075.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_chen4075__data_5_devs" {
  user   = aws_iam_user.lena_chen4075.name
  groups = [aws_iam_group.data_5_devs.name]
}

resource "aws_iam_user" "lena_cohen" {
  name = "axvel-1bmofe-lena.cohen"
}

resource "aws_iam_user_login_profile" "lena_cohen" {
  user                    = aws_iam_user.lena_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_cohen__api_7_devs" {
  user   = aws_iam_user.lena_cohen.name
  groups = [aws_iam_group.api_7_devs.name]
}

resource "aws_iam_user" "lena_dubois" {
  name = "axvel-1bmofe-lena.dubois"
}

resource "aws_iam_user_group_membership" "lena_dubois__data_5_analysts" {
  user   = aws_iam_user.lena_dubois.name
  groups = [aws_iam_group.data_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "lena_dubois__base_readonly" {
  user       = aws_iam_user.lena_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "lena_haddad" {
  name = "axvel-1bmofe-lena.haddad"
}

resource "aws_iam_user_login_profile" "lena_haddad" {
  user                    = aws_iam_user.lena_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_haddad__notifications_3_devs" {
  user   = aws_iam_user.lena_haddad.name
  groups = [aws_iam_group.notifications_3_devs.name]
}

resource "aws_iam_user" "lena_jones" {
  name = "axvel-1bmofe-lena.jones"
}

resource "aws_iam_user_login_profile" "lena_jones" {
  user                    = aws_iam_user.lena_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_jones__data_devs" {
  user   = aws_iam_user.lena_jones.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user_group_membership" "lena_jones__ml_2_analysts" {
  user   = aws_iam_user.lena_jones.name
  groups = [aws_iam_group.ml_2_analysts.name]
}

resource "aws_iam_user" "lena_larsen" {
  name = "axvel-1bmofe-lena.larsen"
}

resource "aws_iam_user_login_profile" "lena_larsen" {
  user                    = aws_iam_user.lena_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_larsen__ml_3_devs" {
  user   = aws_iam_user.lena_larsen.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user" "lena_muller" {
  name = "axvel-1bmofe-lena.muller"
}

resource "aws_iam_user_login_profile" "lena_muller" {
  user                    = aws_iam_user.lena_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_muller__data_4_devs" {
  user   = aws_iam_user.lena_muller.name
  groups = [aws_iam_group.data_4_devs.name]
}

resource "aws_iam_user" "lena_nguyen" {
  name = "axvel-1bmofe-lena.nguyen"
}

resource "aws_iam_user_login_profile" "lena_nguyen" {
  user                    = aws_iam_user.lena_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_nguyen__web_2_devs" {
  user   = aws_iam_user.lena_nguyen.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "lena_rossi" {
  name = "axvel-1bmofe-lena.rossi"
}

resource "aws_iam_user_login_profile" "lena_rossi" {
  user                    = aws_iam_user.lena_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_rossi__mobile_6_devs" {
  user   = aws_iam_user.lena_rossi.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user_group_membership" "lena_rossi__ml_5_analysts" {
  user   = aws_iam_user.lena_rossi.name
  groups = [aws_iam_group.ml_5_analysts.name]
}

resource "aws_iam_user" "leo_brown" {
  name = "axvel-1bmofe-leo.brown"
}

resource "aws_iam_user_group_membership" "leo_brown__auth_2_devs" {
  user   = aws_iam_user.leo_brown.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user" "leo_cohen" {
  name = "axvel-1bmofe-leo.cohen"
}

resource "aws_iam_user_login_profile" "leo_cohen" {
  user                    = aws_iam_user.leo_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_cohen__support_3_devs" {
  user   = aws_iam_user.leo_cohen.name
  groups = [aws_iam_group.support_3_devs.name]
}

resource "aws_iam_user" "leo_davis" {
  name = "axvel-1bmofe-leo.davis"
}

resource "aws_iam_user_login_profile" "leo_davis" {
  user                    = aws_iam_user.leo_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_davis__support_2_devs" {
  user   = aws_iam_user.leo_davis.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "leo_davis1158" {
  name = "axvel-1bmofe-leo.davis1158"
}

resource "aws_iam_user_group_membership" "leo_davis1158__data_7_devs" {
  user   = aws_iam_user.leo_davis1158.name
  groups = [aws_iam_group.data_7_devs.name]
}

resource "aws_iam_user" "leo_gupta" {
  name = "axvel-1bmofe-leo.gupta"
}

resource "aws_iam_user_group_membership" "leo_gupta__web_3_analysts" {
  user   = aws_iam_user.leo_gupta.name
  groups = [aws_iam_group.web_3_analysts.name]
}

resource "aws_iam_user" "leo_gupta3689" {
  name = "axvel-1bmofe-leo.gupta3689"
}

resource "aws_iam_user_login_profile" "leo_gupta3689" {
  user                    = aws_iam_user.leo_gupta3689.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_gupta3689__mobile_7_devs" {
  user   = aws_iam_user.leo_gupta3689.name
  groups = [aws_iam_group.mobile_7_devs.name]
}

resource "aws_iam_user" "leo_gupta9176" {
  name = "axvel-1bmofe-leo.gupta9176"
}

resource "aws_iam_user_login_profile" "leo_gupta9176" {
  user                    = aws_iam_user.leo_gupta9176.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_gupta9176__billing_3_devs" {
  user   = aws_iam_user.leo_gupta9176.name
  groups = [aws_iam_group.billing_3_devs.name]
}

resource "aws_iam_user" "leo_ivanov" {
  name = "axvel-1bmofe-leo.ivanov"
}

resource "aws_iam_user_login_profile" "leo_ivanov" {
  user                    = aws_iam_user.leo_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_ivanov__data_5_analysts" {
  user   = aws_iam_user.leo_ivanov.name
  groups = [aws_iam_group.data_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "leo_ivanov__base_readonly" {
  user       = aws_iam_user.leo_ivanov.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "leo_mehta" {
  name = "axvel-1bmofe-leo.mehta"
}

resource "aws_iam_user_login_profile" "leo_mehta" {
  user                    = aws_iam_user.leo_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_mehta__search_2_devs" {
  user   = aws_iam_user.leo_mehta.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "leo_mehta6062" {
  name = "axvel-1bmofe-leo.mehta6062"
}

resource "aws_iam_user_login_profile" "leo_mehta6062" {
  user                    = aws_iam_user.leo_mehta6062.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_mehta6062__billing_3_devs" {
  user   = aws_iam_user.leo_mehta6062.name
  groups = [aws_iam_group.billing_3_devs.name]
}

resource "aws_iam_user_group_membership" "leo_mehta6062__infra_analysts" {
  user   = aws_iam_user.leo_mehta6062.name
  groups = [aws_iam_group.infra_analysts.name]
}

resource "aws_iam_user" "leo_novak" {
  name = "axvel-1bmofe-leo.novak"
}

resource "aws_iam_user_group_membership" "leo_novak__infra_2_devs" {
  user   = aws_iam_user.leo_novak.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user" "leo_smith" {
  name = "axvel-1bmofe-leo.smith"
}

resource "aws_iam_user_group_membership" "leo_smith__api_5_devs" {
  user   = aws_iam_user.leo_smith.name
  groups = [aws_iam_group.api_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "leo_smith__base_readonly" {
  user       = aws_iam_user.leo_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_ali" {
  name = "axvel-1bmofe-mei.ali"
}

resource "aws_iam_user_login_profile" "mei_ali" {
  user                    = aws_iam_user.mei_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_ali__api_6_devs" {
  user   = aws_iam_user.mei_ali.name
  groups = [aws_iam_group.api_6_devs.name]
}

resource "aws_iam_user" "mei_chen" {
  name = "axvel-1bmofe-mei.chen"
}

resource "aws_iam_user_login_profile" "mei_chen" {
  user                    = aws_iam_user.mei_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_chen__notifications_devs" {
  user   = aws_iam_user.mei_chen.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "mei_cohen" {
  name = "axvel-1bmofe-mei.cohen"
}

resource "aws_iam_user_login_profile" "mei_cohen" {
  user                    = aws_iam_user.mei_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_cohen__mobile_2_devs" {
  user   = aws_iam_user.mei_cohen.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "mei_cohen__base_readonly" {
  user       = aws_iam_user.mei_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_cohen6756" {
  name = "axvel-1bmofe-mei.cohen6756"
}

resource "aws_iam_user_group_membership" "mei_cohen6756__auth_5_devs" {
  user   = aws_iam_user.mei_cohen6756.name
  groups = [aws_iam_group.auth_5_devs.name]
}

resource "aws_iam_user" "mei_dubois" {
  name = "axvel-1bmofe-mei.dubois"
}

resource "aws_iam_user_login_profile" "mei_dubois" {
  user                    = aws_iam_user.mei_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_dubois__search_6_devs" {
  user   = aws_iam_user.mei_dubois.name
  groups = [aws_iam_group.search_6_devs.name]
}

resource "aws_iam_user" "mei_ivanov" {
  name = "axvel-1bmofe-mei.ivanov"
}

resource "aws_iam_user_login_profile" "mei_ivanov" {
  user                    = aws_iam_user.mei_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_ivanov__ml_6_analysts" {
  user   = aws_iam_user.mei_ivanov.name
  groups = [aws_iam_group.ml_6_analysts.name]
}

resource "aws_iam_user" "mei_ivanov5675" {
  name = "axvel-1bmofe-mei.ivanov5675"
}

resource "aws_iam_user_login_profile" "mei_ivanov5675" {
  user                    = aws_iam_user.mei_ivanov5675.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_ivanov5675__notifications_4_devs" {
  user   = aws_iam_user.mei_ivanov5675.name
  groups = [aws_iam_group.notifications_4_devs.name]
}

resource "aws_iam_user" "mei_khan" {
  name = "axvel-1bmofe-mei.khan"
}

resource "aws_iam_user_login_profile" "mei_khan" {
  user                    = aws_iam_user.mei_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_khan__support_4_devs" {
  user   = aws_iam_user.mei_khan.name
  groups = [aws_iam_group.support_4_devs.name]
}

resource "aws_iam_user" "mei_khan7505" {
  name = "axvel-1bmofe-mei.khan7505"
}

resource "aws_iam_user_login_profile" "mei_khan7505" {
  user                    = aws_iam_user.mei_khan7505.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_khan7505__ml_3_devs" {
  user   = aws_iam_user.mei_khan7505.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user" "mei_miller" {
  name = "axvel-1bmofe-mei.miller"
}

resource "aws_iam_user_login_profile" "mei_miller" {
  user                    = aws_iam_user.mei_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_miller__search_analysts" {
  user   = aws_iam_user.mei_miller.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "mei_patel" {
  name = "axvel-1bmofe-mei.patel"
}

resource "aws_iam_user_login_profile" "mei_patel" {
  user                    = aws_iam_user.mei_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_patel__growth_4_devs" {
  user   = aws_iam_user.mei_patel.name
  groups = [aws_iam_group.growth_4_devs.name]
}

resource "aws_iam_user" "mei_reddy" {
  name = "axvel-1bmofe-mei.reddy"
}

resource "aws_iam_user_login_profile" "mei_reddy" {
  user                    = aws_iam_user.mei_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_reddy__ml_3_devs" {
  user   = aws_iam_user.mei_reddy.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user" "mei_silva" {
  name = "axvel-1bmofe-mei.silva"
}

resource "aws_iam_user_login_profile" "mei_silva" {
  user                    = aws_iam_user.mei_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_silva__web_3_devs" {
  user   = aws_iam_user.mei_silva.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user" "mei_singh" {
  name = "axvel-1bmofe-mei.singh"
}

resource "aws_iam_user_login_profile" "mei_singh" {
  user                    = aws_iam_user.mei_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_singh__billing_5_analysts" {
  user   = aws_iam_user.mei_singh.name
  groups = [aws_iam_group.billing_5_analysts.name]
}

resource "aws_iam_user" "mei_singh3196" {
  name = "axvel-1bmofe-mei.singh3196"
}

resource "aws_iam_user_login_profile" "mei_singh3196" {
  user                    = aws_iam_user.mei_singh3196.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_singh3196__search_2_devs" {
  user   = aws_iam_user.mei_singh3196.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "mei_smith" {
  name = "axvel-1bmofe-mei.smith"
}

resource "aws_iam_user_login_profile" "mei_smith" {
  user                    = aws_iam_user.mei_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_smith__api_4_devs" {
  user   = aws_iam_user.mei_smith.name
  groups = [aws_iam_group.api_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "mei_smith__base_readonly" {
  user       = aws_iam_user.mei_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_wong" {
  name = "axvel-1bmofe-mei.wong"
}

resource "aws_iam_user_login_profile" "mei_wong" {
  user                    = aws_iam_user.mei_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_wong__web_5_analysts" {
  user   = aws_iam_user.mei_wong.name
  groups = [aws_iam_group.web_5_analysts.name]
}

resource "aws_iam_user" "mike_davis" {
  name = "axvel-1bmofe-mike.davis"
}

resource "aws_iam_user_login_profile" "mike_davis" {
  user                    = aws_iam_user.mike_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_davis__infra_devs" {
  user   = aws_iam_user.mike_davis.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "mike_jones" {
  name = "axvel-1bmofe-mike.jones"
}

resource "aws_iam_user_login_profile" "mike_jones" {
  user                    = aws_iam_user.mike_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_jones__search_3_analysts" {
  user   = aws_iam_user.mike_jones.name
  groups = [aws_iam_group.search_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "mike_jones__base_readonly" {
  user       = aws_iam_user.mike_jones.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mike_khan" {
  name = "axvel-1bmofe-mike.khan"
}

resource "aws_iam_user_login_profile" "mike_khan" {
  user                    = aws_iam_user.mike_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_khan__mobile_4_analysts" {
  user   = aws_iam_user.mike_khan.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "mike_muller" {
  name = "axvel-1bmofe-mike.muller"
}

resource "aws_iam_user_login_profile" "mike_muller" {
  user                    = aws_iam_user.mike_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_muller__infra_4_devs" {
  user   = aws_iam_user.mike_muller.name
  groups = [aws_iam_group.infra_4_devs.name]
}

resource "aws_iam_user" "mike_rossi" {
  name = "axvel-1bmofe-mike.rossi"
}

resource "aws_iam_user_login_profile" "mike_rossi" {
  user                    = aws_iam_user.mike_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_rossi__ml_analysts" {
  user   = aws_iam_user.mike_rossi.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user" "mike_sato" {
  name = "axvel-1bmofe-mike.sato"
}

resource "aws_iam_user_login_profile" "mike_sato" {
  user                    = aws_iam_user.mike_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_sato__notifications_5_devs" {
  user   = aws_iam_user.mike_sato.name
  groups = [aws_iam_group.notifications_5_devs.name]
}

resource "aws_iam_user" "mike_singh" {
  name = "axvel-1bmofe-mike.singh"
}

resource "aws_iam_user_login_profile" "mike_singh" {
  user                    = aws_iam_user.mike_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_singh__mobile_5_devs" {
  user   = aws_iam_user.mike_singh.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user_group_membership" "mike_singh__growth_2_analysts" {
  user   = aws_iam_user.mike_singh.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "mike_singh3940" {
  name = "axvel-1bmofe-mike.singh3940"
}

resource "aws_iam_user_login_profile" "mike_singh3940" {
  user                    = aws_iam_user.mike_singh3940.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_singh3940__web_5_analysts" {
  user   = aws_iam_user.mike_singh3940.name
  groups = [aws_iam_group.web_5_analysts.name]
}

resource "aws_iam_user" "mike_singh4945" {
  name = "axvel-1bmofe-mike.singh4945"
}

resource "aws_iam_user_login_profile" "mike_singh4945" {
  user                    = aws_iam_user.mike_singh4945.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_singh4945__auth_5_devs" {
  user   = aws_iam_user.mike_singh4945.name
  groups = [aws_iam_group.auth_5_devs.name]
}

resource "aws_iam_user" "mike_tanaka" {
  name = "axvel-1bmofe-mike.tanaka"
}

resource "aws_iam_user_login_profile" "mike_tanaka" {
  user                    = aws_iam_user.mike_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_tanaka__api_devs" {
  user   = aws_iam_user.mike_tanaka.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "nina_davis" {
  name = "axvel-1bmofe-nina.davis"
}

resource "aws_iam_user_login_profile" "nina_davis" {
  user                    = aws_iam_user.nina_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_davis__notifications_6_devs" {
  user   = aws_iam_user.nina_davis.name
  groups = [aws_iam_group.notifications_6_devs.name]
}

resource "aws_iam_user" "nina_davis5673" {
  name = "axvel-1bmofe-nina.davis5673"
}

resource "aws_iam_user_login_profile" "nina_davis5673" {
  user                    = aws_iam_user.nina_davis5673.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_davis5673__ml_4_devs" {
  user   = aws_iam_user.nina_davis5673.name
  groups = [aws_iam_group.ml_4_devs.name]
}

resource "aws_iam_user" "nina_gupta" {
  name = "axvel-1bmofe-nina.gupta"
}

resource "aws_iam_user_login_profile" "nina_gupta" {
  user                    = aws_iam_user.nina_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_gupta__ml_2_analysts" {
  user   = aws_iam_user.nina_gupta.name
  groups = [aws_iam_group.ml_2_analysts.name]
}

resource "aws_iam_user" "nina_larsen" {
  name = "axvel-1bmofe-nina.larsen"
}

resource "aws_iam_user_login_profile" "nina_larsen" {
  user                    = aws_iam_user.nina_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_larsen__notifications_analysts" {
  user   = aws_iam_user.nina_larsen.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user" "nina_nguyen" {
  name = "axvel-1bmofe-nina.nguyen"
}

resource "aws_iam_user_login_profile" "nina_nguyen" {
  user                    = aws_iam_user.nina_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_nguyen__growth_analysts" {
  user   = aws_iam_user.nina_nguyen.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "nina_okafor" {
  name = "axvel-1bmofe-nina.okafor"
}

resource "aws_iam_user_login_profile" "nina_okafor" {
  user                    = aws_iam_user.nina_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_okafor__support_4_devs" {
  user   = aws_iam_user.nina_okafor.name
  groups = [aws_iam_group.support_4_devs.name]
}

resource "aws_iam_user_group_membership" "nina_okafor__search_7_analysts" {
  user   = aws_iam_user.nina_okafor.name
  groups = [aws_iam_group.search_7_analysts.name]
}

resource "aws_iam_user" "nina_smith" {
  name = "axvel-1bmofe-nina.smith"
}

resource "aws_iam_user_login_profile" "nina_smith" {
  user                    = aws_iam_user.nina_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_smith__growth_2_analysts" {
  user   = aws_iam_user.nina_smith.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user_group_membership" "nina_smith__infra_2_analysts" {
  user   = aws_iam_user.nina_smith.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "noor_davis" {
  name = "axvel-1bmofe-noor.davis"
}

resource "aws_iam_user_login_profile" "noor_davis" {
  user                    = aws_iam_user.noor_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_davis__infra_7_devs" {
  user   = aws_iam_user.noor_davis.name
  groups = [aws_iam_group.infra_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "noor_davis__base_readonly" {
  user       = aws_iam_user.noor_davis.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "noor_ivanov" {
  name = "axvel-1bmofe-noor.ivanov"
}

resource "aws_iam_user_login_profile" "noor_ivanov" {
  user                    = aws_iam_user.noor_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_ivanov__growth_3_analysts" {
  user   = aws_iam_user.noor_ivanov.name
  groups = [aws_iam_group.growth_3_analysts.name]
}

resource "aws_iam_user" "noor_ivanov3637" {
  name = "axvel-1bmofe-noor.ivanov3637"
}

resource "aws_iam_user_login_profile" "noor_ivanov3637" {
  user                    = aws_iam_user.noor_ivanov3637.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_ivanov3637__search_7_devs" {
  user   = aws_iam_user.noor_ivanov3637.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user" "noor_jones" {
  name = "axvel-1bmofe-noor.jones"
}

resource "aws_iam_user_login_profile" "noor_jones" {
  user                    = aws_iam_user.noor_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_jones__web_7_analysts" {
  user   = aws_iam_user.noor_jones.name
  groups = [aws_iam_group.web_7_analysts.name]
}

resource "aws_iam_user" "noor_khan" {
  name = "axvel-1bmofe-noor.khan"
}

resource "aws_iam_user_login_profile" "noor_khan" {
  user                    = aws_iam_user.noor_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_khan__api_4_analysts" {
  user   = aws_iam_user.noor_khan.name
  groups = [aws_iam_group.api_4_analysts.name]
}

resource "aws_iam_user" "noor_lopez" {
  name = "axvel-1bmofe-noor.lopez"
}

resource "aws_iam_user_login_profile" "noor_lopez" {
  user                    = aws_iam_user.noor_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_lopez__billing_devs" {
  user   = aws_iam_user.noor_lopez.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "noor_lopez9729" {
  name = "axvel-1bmofe-noor.lopez9729"
}

resource "aws_iam_user_group_membership" "noor_lopez9729__mobile_2_devs" {
  user   = aws_iam_user.noor_lopez9729.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "noor_rossi" {
  name = "axvel-1bmofe-noor.rossi"
}

resource "aws_iam_user_login_profile" "noor_rossi" {
  user                    = aws_iam_user.noor_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_rossi__search_2_devs" {
  user   = aws_iam_user.noor_rossi.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "noor_singh" {
  name = "axvel-1bmofe-noor.singh"
}

resource "aws_iam_user_login_profile" "noor_singh" {
  user                    = aws_iam_user.noor_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_singh__mobile_3_devs" {
  user   = aws_iam_user.noor_singh.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "noor_smith" {
  name = "axvel-1bmofe-noor.smith"
}

resource "aws_iam_user_login_profile" "noor_smith" {
  user                    = aws_iam_user.noor_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_smith__support_5_devs" {
  user   = aws_iam_user.noor_smith.name
  groups = [aws_iam_group.support_5_devs.name]
}

resource "aws_iam_user" "noor_wong" {
  name = "axvel-1bmofe-noor.wong"
}

resource "aws_iam_user_login_profile" "noor_wong" {
  user                    = aws_iam_user.noor_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_wong__growth_3_analysts" {
  user   = aws_iam_user.noor_wong.name
  groups = [aws_iam_group.growth_3_analysts.name]
}

resource "aws_iam_user" "omar_ali" {
  name = "axvel-1bmofe-omar.ali"
}

resource "aws_iam_user_login_profile" "omar_ali" {
  user                    = aws_iam_user.omar_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_ali__billing_4_devs" {
  user   = aws_iam_user.omar_ali.name
  groups = [aws_iam_group.billing_4_devs.name]
}

resource "aws_iam_user" "omar_davis" {
  name = "axvel-1bmofe-omar.davis"
}

resource "aws_iam_user_login_profile" "omar_davis" {
  user                    = aws_iam_user.omar_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_davis__search_4_devs" {
  user   = aws_iam_user.omar_davis.name
  groups = [aws_iam_group.search_4_devs.name]
}

resource "aws_iam_user_group_membership" "omar_davis__auth_3_analysts" {
  user   = aws_iam_user.omar_davis.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user" "omar_gupta" {
  name = "axvel-1bmofe-omar.gupta"
}

resource "aws_iam_user_login_profile" "omar_gupta" {
  user                    = aws_iam_user.omar_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_gupta__growth_4_analysts" {
  user   = aws_iam_user.omar_gupta.name
  groups = [aws_iam_group.growth_4_analysts.name]
}

resource "aws_iam_user" "omar_ivanov" {
  name = "axvel-1bmofe-omar.ivanov"
}

resource "aws_iam_user_login_profile" "omar_ivanov" {
  user                    = aws_iam_user.omar_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_ivanov__web_3_devs" {
  user   = aws_iam_user.omar_ivanov.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user" "omar_ivanov4051" {
  name = "axvel-1bmofe-omar.ivanov4051"
}

resource "aws_iam_user_login_profile" "omar_ivanov4051" {
  user                    = aws_iam_user.omar_ivanov4051.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_ivanov4051__search_7_devs" {
  user   = aws_iam_user.omar_ivanov4051.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user_group_membership" "omar_ivanov4051__infra_2_analysts" {
  user   = aws_iam_user.omar_ivanov4051.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "omar_mehta" {
  name = "axvel-1bmofe-omar.mehta"
}

resource "aws_iam_user_login_profile" "omar_mehta" {
  user                    = aws_iam_user.omar_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_mehta__growth_6_devs" {
  user   = aws_iam_user.omar_mehta.name
  groups = [aws_iam_group.growth_6_devs.name]
}

resource "aws_iam_user" "omar_muller" {
  name = "axvel-1bmofe-omar.muller"
}

resource "aws_iam_user_login_profile" "omar_muller" {
  user                    = aws_iam_user.omar_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_muller__notifications_5_analysts" {
  user   = aws_iam_user.omar_muller.name
  groups = [aws_iam_group.notifications_5_analysts.name]
}

resource "aws_iam_user_group_membership" "omar_muller__support_5_analysts" {
  user   = aws_iam_user.omar_muller.name
  groups = [aws_iam_group.support_5_analysts.name]
}

resource "aws_iam_user" "omar_nguyen" {
  name = "axvel-1bmofe-omar.nguyen"
}

resource "aws_iam_user_login_profile" "omar_nguyen" {
  user                    = aws_iam_user.omar_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_nguyen__auth_4_devs" {
  user   = aws_iam_user.omar_nguyen.name
  groups = [aws_iam_group.auth_4_devs.name]
}

resource "aws_iam_user_group_membership" "omar_nguyen__data_5_analysts" {
  user   = aws_iam_user.omar_nguyen.name
  groups = [aws_iam_group.data_5_analysts.name]
}

resource "aws_iam_user" "omar_patel" {
  name = "axvel-1bmofe-omar.patel"
}

resource "aws_iam_user_group_membership" "omar_patel__growth_devs" {
  user   = aws_iam_user.omar_patel.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user_group_membership" "omar_patel__data_6_analysts" {
  user   = aws_iam_user.omar_patel.name
  groups = [aws_iam_group.data_6_analysts.name]
}

resource "aws_iam_user" "omar_reddy" {
  name = "axvel-1bmofe-omar.reddy"
}

resource "aws_iam_user_login_profile" "omar_reddy" {
  user                    = aws_iam_user.omar_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_reddy__data_7_analysts" {
  user   = aws_iam_user.omar_reddy.name
  groups = [aws_iam_group.data_7_analysts.name]
}

resource "aws_iam_user" "omar_sato" {
  name = "axvel-1bmofe-omar.sato"
}

resource "aws_iam_user_login_profile" "omar_sato" {
  user                    = aws_iam_user.omar_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_sato__mobile_analysts" {
  user   = aws_iam_user.omar_sato.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "omar_sato9463" {
  name = "axvel-1bmofe-omar.sato9463"
}

resource "aws_iam_user_login_profile" "omar_sato9463" {
  user                    = aws_iam_user.omar_sato9463.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_sato9463__data_7_devs" {
  user   = aws_iam_user.omar_sato9463.name
  groups = [aws_iam_group.data_7_devs.name]
}

resource "aws_iam_user" "omar_singh" {
  name = "axvel-1bmofe-omar.singh"
}

resource "aws_iam_user_login_profile" "omar_singh" {
  user                    = aws_iam_user.omar_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_singh__auth_3_devs" {
  user   = aws_iam_user.omar_singh.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user" "omar_wong" {
  name = "axvel-1bmofe-omar.wong"
}

resource "aws_iam_user_login_profile" "omar_wong" {
  user                    = aws_iam_user.omar_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_wong__web_2_devs" {
  user   = aws_iam_user.omar_wong.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user" "priya_ali" {
  name = "axvel-1bmofe-priya.ali"
}

resource "aws_iam_user_login_profile" "priya_ali" {
  user                    = aws_iam_user.priya_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_ali__search_7_devs" {
  user   = aws_iam_user.priya_ali.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user" "priya_chen" {
  name = "axvel-1bmofe-priya.chen"
}

resource "aws_iam_user_login_profile" "priya_chen" {
  user                    = aws_iam_user.priya_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_chen__mobile_2_analysts" {
  user   = aws_iam_user.priya_chen.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "priya_cohen" {
  name = "axvel-1bmofe-priya.cohen"
}

resource "aws_iam_user_login_profile" "priya_cohen" {
  user                    = aws_iam_user.priya_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_cohen__ml_5_devs" {
  user   = aws_iam_user.priya_cohen.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "priya_davis" {
  name = "axvel-1bmofe-priya.davis"
}

resource "aws_iam_user_login_profile" "priya_davis" {
  user                    = aws_iam_user.priya_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_davis__search_6_devs" {
  user   = aws_iam_user.priya_davis.name
  groups = [aws_iam_group.search_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "priya_davis__base_readonly" {
  user       = aws_iam_user.priya_davis.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "priya_jones" {
  name = "axvel-1bmofe-priya.jones"
}

resource "aws_iam_user_login_profile" "priya_jones" {
  user                    = aws_iam_user.priya_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_jones__billing_7_analysts" {
  user   = aws_iam_user.priya_jones.name
  groups = [aws_iam_group.billing_7_analysts.name]
}

resource "aws_iam_user" "priya_khan" {
  name = "axvel-1bmofe-priya.khan"
}

resource "aws_iam_user_login_profile" "priya_khan" {
  user                    = aws_iam_user.priya_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_khan__support_6_devs" {
  user   = aws_iam_user.priya_khan.name
  groups = [aws_iam_group.support_6_devs.name]
}

resource "aws_iam_user" "priya_lopez" {
  name = "axvel-1bmofe-priya.lopez"
}

resource "aws_iam_user_login_profile" "priya_lopez" {
  user                    = aws_iam_user.priya_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_lopez__search_6_devs" {
  user   = aws_iam_user.priya_lopez.name
  groups = [aws_iam_group.search_6_devs.name]
}

resource "aws_iam_user" "priya_mehta" {
  name = "axvel-1bmofe-priya.mehta"
}

resource "aws_iam_user_group_membership" "priya_mehta__search_7_devs" {
  user   = aws_iam_user.priya_mehta.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user" "priya_muller" {
  name = "axvel-1bmofe-priya.muller"
}

resource "aws_iam_user_login_profile" "priya_muller" {
  user                    = aws_iam_user.priya_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_muller__ml_5_analysts" {
  user   = aws_iam_user.priya_muller.name
  groups = [aws_iam_group.ml_5_analysts.name]
}

resource "aws_iam_user" "priya_muller3113" {
  name = "axvel-1bmofe-priya.muller3113"
}

resource "aws_iam_user_login_profile" "priya_muller3113" {
  user                    = aws_iam_user.priya_muller3113.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_muller3113__notifications_analysts" {
  user   = aws_iam_user.priya_muller3113.name
  groups = [aws_iam_group.notifications_analysts.name]
}

resource "aws_iam_user" "priya_patel" {
  name = "axvel-1bmofe-priya.patel"
}

resource "aws_iam_user_login_profile" "priya_patel" {
  user                    = aws_iam_user.priya_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_patel__growth_7_analysts" {
  user   = aws_iam_user.priya_patel.name
  groups = [aws_iam_group.growth_7_analysts.name]
}

resource "aws_iam_user" "priya_patel533" {
  name = "axvel-1bmofe-priya.patel533"
}

resource "aws_iam_user_login_profile" "priya_patel533" {
  user                    = aws_iam_user.priya_patel533.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_patel533__web_4_devs" {
  user   = aws_iam_user.priya_patel533.name
  groups = [aws_iam_group.web_4_devs.name]
}

resource "aws_iam_user_group_membership" "priya_patel533__auth_5_analysts" {
  user   = aws_iam_user.priya_patel533.name
  groups = [aws_iam_group.auth_5_analysts.name]
}

resource "aws_iam_user" "priya_singh" {
  name = "axvel-1bmofe-priya.singh"
}

resource "aws_iam_user_group_membership" "priya_singh__api_7_analysts" {
  user   = aws_iam_user.priya_singh.name
  groups = [aws_iam_group.api_7_analysts.name]
}

resource "aws_iam_user_policy_attachment" "priya_singh__base_readonly" {
  user       = aws_iam_user.priya_singh.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "priya_smith" {
  name = "axvel-1bmofe-priya.smith"
}

resource "aws_iam_user_group_membership" "priya_smith__mobile_2_devs" {
  user   = aws_iam_user.priya_smith.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_group_membership" "priya_smith__support_3_analysts" {
  user   = aws_iam_user.priya_smith.name
  groups = [aws_iam_group.support_3_analysts.name]
}

resource "aws_iam_user" "priya_smith2433" {
  name = "axvel-1bmofe-priya.smith2433"
}

resource "aws_iam_user_login_profile" "priya_smith2433" {
  user                    = aws_iam_user.priya_smith2433.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_smith2433__ml_devs" {
  user   = aws_iam_user.priya_smith2433.name
  groups = [aws_iam_group.ml_devs.name]
}

resource "aws_iam_user" "priya_smith3960" {
  name = "axvel-1bmofe-priya.smith3960"
}

resource "aws_iam_user_login_profile" "priya_smith3960" {
  user                    = aws_iam_user.priya_smith3960.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_smith3960__web_3_devs" {
  user   = aws_iam_user.priya_smith3960.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user" "priya_tanaka" {
  name = "axvel-1bmofe-priya.tanaka"
}

resource "aws_iam_user_login_profile" "priya_tanaka" {
  user                    = aws_iam_user.priya_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_tanaka__data_6_devs" {
  user   = aws_iam_user.priya_tanaka.name
  groups = [aws_iam_group.data_6_devs.name]
}

resource "aws_iam_user_group_membership" "priya_tanaka__growth_analysts" {
  user   = aws_iam_user.priya_tanaka.name
  groups = [aws_iam_group.growth_analysts.name]
}

resource "aws_iam_user" "priya_tanaka6694" {
  name = "axvel-1bmofe-priya.tanaka6694"
}

resource "aws_iam_user_group_membership" "priya_tanaka6694__data_3_devs" {
  user   = aws_iam_user.priya_tanaka6694.name
  groups = [aws_iam_group.data_3_devs.name]
}

resource "aws_iam_user" "quinn_ali" {
  name = "axvel-1bmofe-quinn.ali"
}

resource "aws_iam_user_login_profile" "quinn_ali" {
  user                    = aws_iam_user.quinn_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_ali__auth_devs" {
  user   = aws_iam_user.quinn_ali.name
  groups = [aws_iam_group.auth_devs.name]
}

resource "aws_iam_user" "quinn_cohen" {
  name = "axvel-1bmofe-quinn.cohen"
}

resource "aws_iam_user_login_profile" "quinn_cohen" {
  user                    = aws_iam_user.quinn_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_cohen__infra_devs" {
  user   = aws_iam_user.quinn_cohen.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "quinn_dubois" {
  name = "axvel-1bmofe-quinn.dubois"
}

resource "aws_iam_user_group_membership" "quinn_dubois__data_analysts" {
  user   = aws_iam_user.quinn_dubois.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user" "quinn_haddad" {
  name = "axvel-1bmofe-quinn.haddad"
}

resource "aws_iam_user_login_profile" "quinn_haddad" {
  user                    = aws_iam_user.quinn_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_haddad__support_devs" {
  user   = aws_iam_user.quinn_haddad.name
  groups = [aws_iam_group.support_devs.name]
}

resource "aws_iam_user_group_membership" "quinn_haddad__ml_3_analysts" {
  user   = aws_iam_user.quinn_haddad.name
  groups = [aws_iam_group.ml_3_analysts.name]
}

resource "aws_iam_user" "quinn_jones" {
  name = "axvel-1bmofe-quinn.jones"
}

resource "aws_iam_user_login_profile" "quinn_jones" {
  user                    = aws_iam_user.quinn_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_jones__growth_6_devs" {
  user   = aws_iam_user.quinn_jones.name
  groups = [aws_iam_group.growth_6_devs.name]
}

resource "aws_iam_user" "quinn_miller" {
  name = "axvel-1bmofe-quinn.miller"
}

resource "aws_iam_user_login_profile" "quinn_miller" {
  user                    = aws_iam_user.quinn_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_miller__notifications_5_devs" {
  user   = aws_iam_user.quinn_miller.name
  groups = [aws_iam_group.notifications_5_devs.name]
}

resource "aws_iam_user" "quinn_miller1427" {
  name = "axvel-1bmofe-quinn.miller1427"
}

resource "aws_iam_user_login_profile" "quinn_miller1427" {
  user                    = aws_iam_user.quinn_miller1427.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_miller1427__infra_3_devs" {
  user   = aws_iam_user.quinn_miller1427.name
  groups = [aws_iam_group.infra_3_devs.name]
}

resource "aws_iam_user" "quinn_patel" {
  name = "axvel-1bmofe-quinn.patel"
}

resource "aws_iam_user_group_membership" "quinn_patel__auth_3_devs" {
  user   = aws_iam_user.quinn_patel.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user" "quinn_patel8966" {
  name = "axvel-1bmofe-quinn.patel8966"
}

resource "aws_iam_user_login_profile" "quinn_patel8966" {
  user                    = aws_iam_user.quinn_patel8966.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_patel8966__infra_4_devs" {
  user   = aws_iam_user.quinn_patel8966.name
  groups = [aws_iam_group.infra_4_devs.name]
}

resource "aws_iam_user" "quinn_sato" {
  name = "axvel-1bmofe-quinn.sato"
}

resource "aws_iam_user_group_membership" "quinn_sato__web_3_devs" {
  user   = aws_iam_user.quinn_sato.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user" "quinn_silva" {
  name = "axvel-1bmofe-quinn.silva"
}

resource "aws_iam_user_login_profile" "quinn_silva" {
  user                    = aws_iam_user.quinn_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_silva__ml_2_devs" {
  user   = aws_iam_user.quinn_silva.name
  groups = [aws_iam_group.ml_2_devs.name]
}

resource "aws_iam_user" "quinn_smith" {
  name = "axvel-1bmofe-quinn.smith"
}

resource "aws_iam_user_login_profile" "quinn_smith" {
  user                    = aws_iam_user.quinn_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_smith__growth_4_devs" {
  user   = aws_iam_user.quinn_smith.name
  groups = [aws_iam_group.growth_4_devs.name]
}

resource "aws_iam_user" "quinn_tanaka" {
  name = "axvel-1bmofe-quinn.tanaka"
}

resource "aws_iam_user_login_profile" "quinn_tanaka" {
  user                    = aws_iam_user.quinn_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_tanaka__billing_7_analysts" {
  user   = aws_iam_user.quinn_tanaka.name
  groups = [aws_iam_group.billing_7_analysts.name]
}

resource "aws_iam_user" "raj_chen" {
  name = "axvel-1bmofe-raj.chen"
}

resource "aws_iam_user_login_profile" "raj_chen" {
  user                    = aws_iam_user.raj_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_chen__growth_7_devs" {
  user   = aws_iam_user.raj_chen.name
  groups = [aws_iam_group.growth_7_devs.name]
}

resource "aws_iam_user_group_membership" "raj_chen__notifications_4_analysts" {
  user   = aws_iam_user.raj_chen.name
  groups = [aws_iam_group.notifications_4_analysts.name]
}

resource "aws_iam_user" "raj_garcia" {
  name = "axvel-1bmofe-raj.garcia"
}

resource "aws_iam_user_login_profile" "raj_garcia" {
  user                    = aws_iam_user.raj_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_garcia__auth_6_devs" {
  user   = aws_iam_user.raj_garcia.name
  groups = [aws_iam_group.auth_6_devs.name]
}

resource "aws_iam_user" "raj_gupta" {
  name = "axvel-1bmofe-raj.gupta"
}

resource "aws_iam_user_login_profile" "raj_gupta" {
  user                    = aws_iam_user.raj_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_gupta__api_5_devs" {
  user   = aws_iam_user.raj_gupta.name
  groups = [aws_iam_group.api_5_devs.name]
}

resource "aws_iam_user_group_membership" "raj_gupta__auth_5_analysts" {
  user   = aws_iam_user.raj_gupta.name
  groups = [aws_iam_group.auth_5_analysts.name]
}

resource "aws_iam_user" "raj_ivanov" {
  name = "axvel-1bmofe-raj.ivanov"
}

resource "aws_iam_user_login_profile" "raj_ivanov" {
  user                    = aws_iam_user.raj_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_ivanov__mobile_3_devs" {
  user   = aws_iam_user.raj_ivanov.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "raj_khan" {
  name = "axvel-1bmofe-raj.khan"
}

resource "aws_iam_user_login_profile" "raj_khan" {
  user                    = aws_iam_user.raj_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_khan__growth_devs" {
  user   = aws_iam_user.raj_khan.name
  groups = [aws_iam_group.growth_devs.name]
}

resource "aws_iam_user" "raj_khan1721" {
  name = "axvel-1bmofe-raj.khan1721"
}

resource "aws_iam_user_login_profile" "raj_khan1721" {
  user                    = aws_iam_user.raj_khan1721.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_khan1721__billing_7_devs" {
  user   = aws_iam_user.raj_khan1721.name
  groups = [aws_iam_group.billing_7_devs.name]
}

resource "aws_iam_user" "raj_larsen" {
  name = "axvel-1bmofe-raj.larsen"
}

resource "aws_iam_user_login_profile" "raj_larsen" {
  user                    = aws_iam_user.raj_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_larsen__web_2_devs" {
  user   = aws_iam_user.raj_larsen.name
  groups = [aws_iam_group.web_2_devs.name]
}

resource "aws_iam_user_group_membership" "raj_larsen__infra_2_analysts" {
  user   = aws_iam_user.raj_larsen.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "raj_lopez" {
  name = "axvel-1bmofe-raj.lopez"
}

resource "aws_iam_user_login_profile" "raj_lopez" {
  user                    = aws_iam_user.raj_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_lopez__api_4_devs" {
  user   = aws_iam_user.raj_lopez.name
  groups = [aws_iam_group.api_4_devs.name]
}

resource "aws_iam_user" "raj_lopez3056" {
  name = "axvel-1bmofe-raj.lopez3056"
}

resource "aws_iam_user_login_profile" "raj_lopez3056" {
  user                    = aws_iam_user.raj_lopez3056.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_lopez3056__data_devs" {
  user   = aws_iam_user.raj_lopez3056.name
  groups = [aws_iam_group.data_devs.name]
}

resource "aws_iam_user" "raj_lopez7825" {
  name = "axvel-1bmofe-raj.lopez7825"
}

resource "aws_iam_user_login_profile" "raj_lopez7825" {
  user                    = aws_iam_user.raj_lopez7825.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_lopez7825__growth_7_devs" {
  user   = aws_iam_user.raj_lopez7825.name
  groups = [aws_iam_group.growth_7_devs.name]
}

resource "aws_iam_user" "raj_miller" {
  name = "axvel-1bmofe-raj.miller"
}

resource "aws_iam_user_login_profile" "raj_miller" {
  user                    = aws_iam_user.raj_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_miller__ml_6_analysts" {
  user   = aws_iam_user.raj_miller.name
  groups = [aws_iam_group.ml_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "raj_miller__base_readonly" {
  user       = aws_iam_user.raj_miller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "raj_muller" {
  name = "axvel-1bmofe-raj.muller"
}

resource "aws_iam_user_group_membership" "raj_muller__api_5_devs" {
  user   = aws_iam_user.raj_muller.name
  groups = [aws_iam_group.api_5_devs.name]
}

resource "aws_iam_user_group_membership" "raj_muller__growth_7_analysts" {
  user   = aws_iam_user.raj_muller.name
  groups = [aws_iam_group.growth_7_analysts.name]
}

resource "aws_iam_user" "raj_reddy" {
  name = "axvel-1bmofe-raj.reddy"
}

resource "aws_iam_user_login_profile" "raj_reddy" {
  user                    = aws_iam_user.raj_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_reddy__ml_3_devs" {
  user   = aws_iam_user.raj_reddy.name
  groups = [aws_iam_group.ml_3_devs.name]
}

resource "aws_iam_user_group_membership" "raj_reddy__growth_6_analysts" {
  user   = aws_iam_user.raj_reddy.name
  groups = [aws_iam_group.growth_6_analysts.name]
}

resource "aws_iam_user" "raj_rossi" {
  name = "axvel-1bmofe-raj.rossi"
}

resource "aws_iam_user_login_profile" "raj_rossi" {
  user                    = aws_iam_user.raj_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_rossi__search_5_analysts" {
  user   = aws_iam_user.raj_rossi.name
  groups = [aws_iam_group.search_5_analysts.name]
}

resource "aws_iam_user_group_membership" "raj_rossi__search_2_analysts" {
  user   = aws_iam_user.raj_rossi.name
  groups = [aws_iam_group.search_2_analysts.name]
}

resource "aws_iam_user" "raj_singh" {
  name = "axvel-1bmofe-raj.singh"
}

resource "aws_iam_user_login_profile" "raj_singh" {
  user                    = aws_iam_user.raj_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_singh__web_4_devs" {
  user   = aws_iam_user.raj_singh.name
  groups = [aws_iam_group.web_4_devs.name]
}

resource "aws_iam_user" "raj_tanaka" {
  name = "axvel-1bmofe-raj.tanaka"
}

resource "aws_iam_user_group_membership" "raj_tanaka__api_6_devs" {
  user   = aws_iam_user.raj_tanaka.name
  groups = [aws_iam_group.api_6_devs.name]
}

resource "aws_iam_user" "raj_wong" {
  name = "axvel-1bmofe-raj.wong"
}

resource "aws_iam_user_login_profile" "raj_wong" {
  user                    = aws_iam_user.raj_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_wong__mobile_2_devs" {
  user   = aws_iam_user.raj_wong.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "sara_chen" {
  name = "axvel-1bmofe-sara.chen"
}

resource "aws_iam_user_login_profile" "sara_chen" {
  user                    = aws_iam_user.sara_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_chen__infra_3_analysts" {
  user   = aws_iam_user.sara_chen.name
  groups = [aws_iam_group.infra_3_analysts.name]
}

resource "aws_iam_user" "sara_gupta" {
  name = "axvel-1bmofe-sara.gupta"
}

resource "aws_iam_user_login_profile" "sara_gupta" {
  user                    = aws_iam_user.sara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_gupta__auth_3_devs" {
  user   = aws_iam_user.sara_gupta.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user_group_membership" "sara_gupta__infra_6_analysts" {
  user   = aws_iam_user.sara_gupta.name
  groups = [aws_iam_group.infra_6_analysts.name]
}

resource "aws_iam_user" "sara_khan" {
  name = "axvel-1bmofe-sara.khan"
}

resource "aws_iam_user_login_profile" "sara_khan" {
  user                    = aws_iam_user.sara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_khan__data_3_devs" {
  user   = aws_iam_user.sara_khan.name
  groups = [aws_iam_group.data_3_devs.name]
}

resource "aws_iam_user" "sara_larsen" {
  name = "axvel-1bmofe-sara.larsen"
}

resource "aws_iam_user_login_profile" "sara_larsen" {
  user                    = aws_iam_user.sara_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_larsen__mobile_3_analysts" {
  user   = aws_iam_user.sara_larsen.name
  groups = [aws_iam_group.mobile_3_analysts.name]
}

resource "aws_iam_user" "sara_miller" {
  name = "axvel-1bmofe-sara.miller"
}

resource "aws_iam_user_login_profile" "sara_miller" {
  user                    = aws_iam_user.sara_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_miller__auth_3_devs" {
  user   = aws_iam_user.sara_miller.name
  groups = [aws_iam_group.auth_3_devs.name]
}

resource "aws_iam_user" "sara_muller" {
  name = "axvel-1bmofe-sara.muller"
}

resource "aws_iam_user_login_profile" "sara_muller" {
  user                    = aws_iam_user.sara_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_muller__auth_5_devs" {
  user   = aws_iam_user.sara_muller.name
  groups = [aws_iam_group.auth_5_devs.name]
}

resource "aws_iam_user" "sara_nguyen" {
  name = "axvel-1bmofe-sara.nguyen"
}

resource "aws_iam_user_group_membership" "sara_nguyen__api_6_devs" {
  user   = aws_iam_user.sara_nguyen.name
  groups = [aws_iam_group.api_6_devs.name]
}

resource "aws_iam_user_group_membership" "sara_nguyen__data_5_analysts" {
  user   = aws_iam_user.sara_nguyen.name
  groups = [aws_iam_group.data_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "sara_nguyen__base_readonly" {
  user       = aws_iam_user.sara_nguyen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "sara_novak" {
  name = "axvel-1bmofe-sara.novak"
}

resource "aws_iam_user_login_profile" "sara_novak" {
  user                    = aws_iam_user.sara_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_novak__billing_6_analysts" {
  user   = aws_iam_user.sara_novak.name
  groups = [aws_iam_group.billing_6_analysts.name]
}

resource "aws_iam_user" "sara_novak1895" {
  name = "axvel-1bmofe-sara.novak1895"
}

resource "aws_iam_user_login_profile" "sara_novak1895" {
  user                    = aws_iam_user.sara_novak1895.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_novak1895__mobile_6_analysts" {
  user   = aws_iam_user.sara_novak1895.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "sara_novak1895__base_readonly" {
  user       = aws_iam_user.sara_novak1895.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "sara_patel" {
  name = "axvel-1bmofe-sara.patel"
}

resource "aws_iam_user_login_profile" "sara_patel" {
  user                    = aws_iam_user.sara_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_patel__search_4_analysts" {
  user   = aws_iam_user.sara_patel.name
  groups = [aws_iam_group.search_4_analysts.name]
}

resource "aws_iam_user" "sara_singh" {
  name = "axvel-1bmofe-sara.singh"
}

resource "aws_iam_user_login_profile" "sara_singh" {
  user                    = aws_iam_user.sara_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_singh__mobile_5_analysts" {
  user   = aws_iam_user.sara_singh.name
  groups = [aws_iam_group.mobile_5_analysts.name]
}

resource "aws_iam_user" "tom_dubois" {
  name = "axvel-1bmofe-tom.dubois"
}

resource "aws_iam_user_login_profile" "tom_dubois" {
  user                    = aws_iam_user.tom_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_dubois__api_analysts" {
  user   = aws_iam_user.tom_dubois.name
  groups = [aws_iam_group.api_analysts.name]
}

resource "aws_iam_user_group_membership" "tom_dubois__ml_4_analysts" {
  user   = aws_iam_user.tom_dubois.name
  groups = [aws_iam_group.ml_4_analysts.name]
}

resource "aws_iam_user" "tom_garcia" {
  name = "axvel-1bmofe-tom.garcia"
}

resource "aws_iam_user_login_profile" "tom_garcia" {
  user                    = aws_iam_user.tom_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_garcia__search_4_analysts" {
  user   = aws_iam_user.tom_garcia.name
  groups = [aws_iam_group.search_4_analysts.name]
}

resource "aws_iam_user_group_membership" "tom_garcia__support_4_analysts" {
  user   = aws_iam_user.tom_garcia.name
  groups = [aws_iam_group.support_4_analysts.name]
}

resource "aws_iam_user" "tom_gupta" {
  name = "axvel-1bmofe-tom.gupta"
}

resource "aws_iam_user_login_profile" "tom_gupta" {
  user                    = aws_iam_user.tom_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_gupta__support_6_analysts" {
  user   = aws_iam_user.tom_gupta.name
  groups = [aws_iam_group.support_6_analysts.name]
}

resource "aws_iam_user" "tom_jones" {
  name = "axvel-1bmofe-tom.jones"
}

resource "aws_iam_user_login_profile" "tom_jones" {
  user                    = aws_iam_user.tom_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_jones__infra_2_devs" {
  user   = aws_iam_user.tom_jones.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user" "tom_jones2137" {
  name = "axvel-1bmofe-tom.jones2137"
}

resource "aws_iam_user_login_profile" "tom_jones2137" {
  user                    = aws_iam_user.tom_jones2137.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_jones2137__search_3_devs" {
  user   = aws_iam_user.tom_jones2137.name
  groups = [aws_iam_group.search_3_devs.name]
}

resource "aws_iam_user_group_membership" "tom_jones2137__mobile_5_analysts" {
  user   = aws_iam_user.tom_jones2137.name
  groups = [aws_iam_group.mobile_5_analysts.name]
}

resource "aws_iam_user" "tom_lopez" {
  name = "axvel-1bmofe-tom.lopez"
}

resource "aws_iam_user_login_profile" "tom_lopez" {
  user                    = aws_iam_user.tom_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_lopez__api_devs" {
  user   = aws_iam_user.tom_lopez.name
  groups = [aws_iam_group.api_devs.name]
}

resource "aws_iam_user" "tom_nguyen" {
  name = "axvel-1bmofe-tom.nguyen"
}

resource "aws_iam_user_login_profile" "tom_nguyen" {
  user                    = aws_iam_user.tom_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_nguyen__ml_5_analysts" {
  user   = aws_iam_user.tom_nguyen.name
  groups = [aws_iam_group.ml_5_analysts.name]
}

resource "aws_iam_user" "tom_patel" {
  name = "axvel-1bmofe-tom.patel"
}

resource "aws_iam_user_login_profile" "tom_patel" {
  user                    = aws_iam_user.tom_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_patel__infra_7_devs" {
  user   = aws_iam_user.tom_patel.name
  groups = [aws_iam_group.infra_7_devs.name]
}

resource "aws_iam_user_group_membership" "tom_patel__notifications_4_analysts" {
  user   = aws_iam_user.tom_patel.name
  groups = [aws_iam_group.notifications_4_analysts.name]
}

resource "aws_iam_user" "tom_sato" {
  name = "axvel-1bmofe-tom.sato"
}

resource "aws_iam_user_login_profile" "tom_sato" {
  user                    = aws_iam_user.tom_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_sato__auth_4_devs" {
  user   = aws_iam_user.tom_sato.name
  groups = [aws_iam_group.auth_4_devs.name]
}

resource "aws_iam_user" "tom_silva" {
  name = "axvel-1bmofe-tom.silva"
}

resource "aws_iam_user_group_membership" "tom_silva__mobile_5_devs" {
  user   = aws_iam_user.tom_silva.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user_group_membership" "tom_silva__ml_3_analysts" {
  user   = aws_iam_user.tom_silva.name
  groups = [aws_iam_group.ml_3_analysts.name]
}

resource "aws_iam_user" "tom_silva698" {
  name = "axvel-1bmofe-tom.silva698"
}

resource "aws_iam_user_login_profile" "tom_silva698" {
  user                    = aws_iam_user.tom_silva698.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_silva698__mobile_7_devs" {
  user   = aws_iam_user.tom_silva698.name
  groups = [aws_iam_group.mobile_7_devs.name]
}

resource "aws_iam_user" "uma_brown" {
  name = "axvel-1bmofe-uma.brown"
}

resource "aws_iam_user_login_profile" "uma_brown" {
  user                    = aws_iam_user.uma_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_brown__search_2_devs" {
  user   = aws_iam_user.uma_brown.name
  groups = [aws_iam_group.search_2_devs.name]
}

resource "aws_iam_user" "uma_dubois" {
  name = "axvel-1bmofe-uma.dubois"
}

resource "aws_iam_user_login_profile" "uma_dubois" {
  user                    = aws_iam_user.uma_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_dubois__growth_2_analysts" {
  user   = aws_iam_user.uma_dubois.name
  groups = [aws_iam_group.growth_2_analysts.name]
}

resource "aws_iam_user" "uma_khan" {
  name = "axvel-1bmofe-uma.khan"
}

resource "aws_iam_user_login_profile" "uma_khan" {
  user                    = aws_iam_user.uma_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_khan__ml_6_devs" {
  user   = aws_iam_user.uma_khan.name
  groups = [aws_iam_group.ml_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "uma_khan__base_readonly" {
  user       = aws_iam_user.uma_khan.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_lopez" {
  name = "axvel-1bmofe-uma.lopez"
}

resource "aws_iam_user_login_profile" "uma_lopez" {
  user                    = aws_iam_user.uma_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_lopez__ml_4_devs" {
  user   = aws_iam_user.uma_lopez.name
  groups = [aws_iam_group.ml_4_devs.name]
}

resource "aws_iam_user" "uma_sato" {
  name = "axvel-1bmofe-uma.sato"
}

resource "aws_iam_user_login_profile" "uma_sato" {
  user                    = aws_iam_user.uma_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_sato__billing_2_devs" {
  user   = aws_iam_user.uma_sato.name
  groups = [aws_iam_group.billing_2_devs.name]
}

resource "aws_iam_user" "uma_wong" {
  name = "axvel-1bmofe-uma.wong"
}

resource "aws_iam_user_login_profile" "uma_wong" {
  user                    = aws_iam_user.uma_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_wong__search_6_devs" {
  user   = aws_iam_user.uma_wong.name
  groups = [aws_iam_group.search_6_devs.name]
}

resource "aws_iam_user" "uma_wong3131" {
  name = "axvel-1bmofe-uma.wong3131"
}

resource "aws_iam_user_login_profile" "uma_wong3131" {
  user                    = aws_iam_user.uma_wong3131.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_wong3131__web_2_analysts" {
  user   = aws_iam_user.uma_wong3131.name
  groups = [aws_iam_group.web_2_analysts.name]
}

resource "aws_iam_user" "uma_wong6158" {
  name = "axvel-1bmofe-uma.wong6158"
}

resource "aws_iam_user_login_profile" "uma_wong6158" {
  user                    = aws_iam_user.uma_wong6158.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_wong6158__billing_devs" {
  user   = aws_iam_user.uma_wong6158.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "vik_ali" {
  name = "axvel-1bmofe-vik.ali"
}

resource "aws_iam_user_login_profile" "vik_ali" {
  user                    = aws_iam_user.vik_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_ali__infra_7_analysts" {
  user   = aws_iam_user.vik_ali.name
  groups = [aws_iam_group.infra_7_analysts.name]
}

resource "aws_iam_user" "vik_brown" {
  name = "axvel-1bmofe-vik.brown"
}

resource "aws_iam_user_login_profile" "vik_brown" {
  user                    = aws_iam_user.vik_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_brown__growth_6_devs" {
  user   = aws_iam_user.vik_brown.name
  groups = [aws_iam_group.growth_6_devs.name]
}

resource "aws_iam_user" "vik_garcia" {
  name = "axvel-1bmofe-vik.garcia"
}

resource "aws_iam_user_login_profile" "vik_garcia" {
  user                    = aws_iam_user.vik_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_garcia__support_5_devs" {
  user   = aws_iam_user.vik_garcia.name
  groups = [aws_iam_group.support_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "vik_garcia__base_readonly" {
  user       = aws_iam_user.vik_garcia.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "vik_gupta" {
  name = "axvel-1bmofe-vik.gupta"
}

resource "aws_iam_user_group_membership" "vik_gupta__mobile_7_devs" {
  user   = aws_iam_user.vik_gupta.name
  groups = [aws_iam_group.mobile_7_devs.name]
}

resource "aws_iam_user" "vik_ivanov" {
  name = "axvel-1bmofe-vik.ivanov"
}

resource "aws_iam_user_login_profile" "vik_ivanov" {
  user                    = aws_iam_user.vik_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_ivanov__auth_2_devs" {
  user   = aws_iam_user.vik_ivanov.name
  groups = [aws_iam_group.auth_2_devs.name]
}

resource "aws_iam_user_group_membership" "vik_ivanov__infra_2_analysts" {
  user   = aws_iam_user.vik_ivanov.name
  groups = [aws_iam_group.infra_2_analysts.name]
}

resource "aws_iam_user" "vik_okafor" {
  name = "axvel-1bmofe-vik.okafor"
}

resource "aws_iam_user_login_profile" "vik_okafor" {
  user                    = aws_iam_user.vik_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_okafor__data_4_analysts" {
  user   = aws_iam_user.vik_okafor.name
  groups = [aws_iam_group.data_4_analysts.name]
}

resource "aws_iam_user" "vik_patel" {
  name = "axvel-1bmofe-vik.patel"
}

resource "aws_iam_user_login_profile" "vik_patel" {
  user                    = aws_iam_user.vik_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_patel__support_3_analysts" {
  user   = aws_iam_user.vik_patel.name
  groups = [aws_iam_group.support_3_analysts.name]
}

resource "aws_iam_user_group_membership" "vik_patel__notifications_6_analysts" {
  user   = aws_iam_user.vik_patel.name
  groups = [aws_iam_group.notifications_6_analysts.name]
}

resource "aws_iam_user" "wen_ali" {
  name = "axvel-1bmofe-wen.ali"
}

resource "aws_iam_user_login_profile" "wen_ali" {
  user                    = aws_iam_user.wen_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_ali__mobile_2_devs" {
  user   = aws_iam_user.wen_ali.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "wen_ali4552" {
  name = "axvel-1bmofe-wen.ali4552"
}

resource "aws_iam_user_login_profile" "wen_ali4552" {
  user                    = aws_iam_user.wen_ali4552.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_ali4552__infra_4_devs" {
  user   = aws_iam_user.wen_ali4552.name
  groups = [aws_iam_group.infra_4_devs.name]
}

resource "aws_iam_user" "wen_brown" {
  name = "axvel-1bmofe-wen.brown"
}

resource "aws_iam_user_login_profile" "wen_brown" {
  user                    = aws_iam_user.wen_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_brown__web_devs" {
  user   = aws_iam_user.wen_brown.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user" "wen_brown5678" {
  name = "axvel-1bmofe-wen.brown5678"
}

resource "aws_iam_user_group_membership" "wen_brown5678__api_6_devs" {
  user   = aws_iam_user.wen_brown5678.name
  groups = [aws_iam_group.api_6_devs.name]
}

resource "aws_iam_user" "wen_cohen" {
  name = "axvel-1bmofe-wen.cohen"
}

resource "aws_iam_user_login_profile" "wen_cohen" {
  user                    = aws_iam_user.wen_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_cohen__notifications_5_analysts" {
  user   = aws_iam_user.wen_cohen.name
  groups = [aws_iam_group.notifications_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "wen_cohen__base_readonly" {
  user       = aws_iam_user.wen_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "wen_dubois" {
  name = "axvel-1bmofe-wen.dubois"
}

resource "aws_iam_user_login_profile" "wen_dubois" {
  user                    = aws_iam_user.wen_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_dubois__infra_3_analysts" {
  user   = aws_iam_user.wen_dubois.name
  groups = [aws_iam_group.infra_3_analysts.name]
}

resource "aws_iam_user_group_membership" "wen_dubois__support_analysts" {
  user   = aws_iam_user.wen_dubois.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "wen_gupta" {
  name = "axvel-1bmofe-wen.gupta"
}

resource "aws_iam_user_group_membership" "wen_gupta__search_7_devs" {
  user   = aws_iam_user.wen_gupta.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user" "wen_kim" {
  name = "axvel-1bmofe-wen.kim"
}

resource "aws_iam_user_login_profile" "wen_kim" {
  user                    = aws_iam_user.wen_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_kim__web_6_analysts" {
  user   = aws_iam_user.wen_kim.name
  groups = [aws_iam_group.web_6_analysts.name]
}

resource "aws_iam_user" "wen_lopez" {
  name = "axvel-1bmofe-wen.lopez"
}

resource "aws_iam_user_login_profile" "wen_lopez" {
  user                    = aws_iam_user.wen_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_lopez__infra_6_devs" {
  user   = aws_iam_user.wen_lopez.name
  groups = [aws_iam_group.infra_6_devs.name]
}

resource "aws_iam_user" "wen_okafor" {
  name = "axvel-1bmofe-wen.okafor"
}

resource "aws_iam_user_login_profile" "wen_okafor" {
  user                    = aws_iam_user.wen_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_okafor__notifications_5_devs" {
  user   = aws_iam_user.wen_okafor.name
  groups = [aws_iam_group.notifications_5_devs.name]
}

resource "aws_iam_user" "wen_patel" {
  name = "axvel-1bmofe-wen.patel"
}

resource "aws_iam_user_login_profile" "wen_patel" {
  user                    = aws_iam_user.wen_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_patel__infra_4_devs" {
  user   = aws_iam_user.wen_patel.name
  groups = [aws_iam_group.infra_4_devs.name]
}

resource "aws_iam_user" "wen_sato" {
  name = "axvel-1bmofe-wen.sato"
}

resource "aws_iam_user_group_membership" "wen_sato__web_devs" {
  user   = aws_iam_user.wen_sato.name
  groups = [aws_iam_group.web_devs.name]
}

resource "aws_iam_user_group_membership" "wen_sato__auth_5_analysts" {
  user   = aws_iam_user.wen_sato.name
  groups = [aws_iam_group.auth_5_analysts.name]
}

resource "aws_iam_user" "wen_sato2120" {
  name = "axvel-1bmofe-wen.sato2120"
}

resource "aws_iam_user_login_profile" "wen_sato2120" {
  user                    = aws_iam_user.wen_sato2120.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_sato2120__infra_devs" {
  user   = aws_iam_user.wen_sato2120.name
  groups = [aws_iam_group.infra_devs.name]
}

resource "aws_iam_user" "wen_tanaka" {
  name = "axvel-1bmofe-wen.tanaka"
}

resource "aws_iam_user_login_profile" "wen_tanaka" {
  user                    = aws_iam_user.wen_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_tanaka__ml_5_devs" {
  user   = aws_iam_user.wen_tanaka.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "wen_tanaka72" {
  name = "axvel-1bmofe-wen.tanaka72"
}

resource "aws_iam_user_login_profile" "wen_tanaka72" {
  user                    = aws_iam_user.wen_tanaka72.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_tanaka72__support_analysts" {
  user   = aws_iam_user.wen_tanaka72.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "xia_dubois" {
  name = "axvel-1bmofe-xia.dubois"
}

resource "aws_iam_user_login_profile" "xia_dubois" {
  user                    = aws_iam_user.xia_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_dubois__data_analysts" {
  user   = aws_iam_user.xia_dubois.name
  groups = [aws_iam_group.data_analysts.name]
}

resource "aws_iam_user" "xia_dubois3448" {
  name = "axvel-1bmofe-xia.dubois3448"
}

resource "aws_iam_user_login_profile" "xia_dubois3448" {
  user                    = aws_iam_user.xia_dubois3448.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_dubois3448__data_2_devs" {
  user   = aws_iam_user.xia_dubois3448.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user_group_membership" "xia_dubois3448__auth_5_analysts" {
  user   = aws_iam_user.xia_dubois3448.name
  groups = [aws_iam_group.auth_5_analysts.name]
}

resource "aws_iam_user" "xia_garcia" {
  name = "axvel-1bmofe-xia.garcia"
}

resource "aws_iam_user_login_profile" "xia_garcia" {
  user                    = aws_iam_user.xia_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_garcia__auth_6_analysts" {
  user   = aws_iam_user.xia_garcia.name
  groups = [aws_iam_group.auth_6_analysts.name]
}

resource "aws_iam_user_group_membership" "xia_garcia__web_6_analysts" {
  user   = aws_iam_user.xia_garcia.name
  groups = [aws_iam_group.web_6_analysts.name]
}

resource "aws_iam_user" "xia_gupta" {
  name = "axvel-1bmofe-xia.gupta"
}

resource "aws_iam_user_login_profile" "xia_gupta" {
  user                    = aws_iam_user.xia_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_gupta__api_4_devs" {
  user   = aws_iam_user.xia_gupta.name
  groups = [aws_iam_group.api_4_devs.name]
}

resource "aws_iam_user" "xia_ivanov" {
  name = "axvel-1bmofe-xia.ivanov"
}

resource "aws_iam_user_login_profile" "xia_ivanov" {
  user                    = aws_iam_user.xia_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_ivanov__notifications_6_devs" {
  user   = aws_iam_user.xia_ivanov.name
  groups = [aws_iam_group.notifications_6_devs.name]
}

resource "aws_iam_user_group_membership" "xia_ivanov__infra_7_analysts" {
  user   = aws_iam_user.xia_ivanov.name
  groups = [aws_iam_group.infra_7_analysts.name]
}

resource "aws_iam_user" "xia_lopez" {
  name = "axvel-1bmofe-xia.lopez"
}

resource "aws_iam_user_login_profile" "xia_lopez" {
  user                    = aws_iam_user.xia_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_lopez__mobile_6_devs" {
  user   = aws_iam_user.xia_lopez.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user" "xia_lopez364" {
  name = "axvel-1bmofe-xia.lopez364"
}

resource "aws_iam_user_login_profile" "xia_lopez364" {
  user                    = aws_iam_user.xia_lopez364.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_lopez364__infra_3_devs" {
  user   = aws_iam_user.xia_lopez364.name
  groups = [aws_iam_group.infra_3_devs.name]
}

resource "aws_iam_user" "xia_miller" {
  name = "axvel-1bmofe-xia.miller"
}

resource "aws_iam_user_login_profile" "xia_miller" {
  user                    = aws_iam_user.xia_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_miller__support_5_devs" {
  user   = aws_iam_user.xia_miller.name
  groups = [aws_iam_group.support_5_devs.name]
}

resource "aws_iam_user" "xia_nguyen" {
  name = "axvel-1bmofe-xia.nguyen"
}

resource "aws_iam_user_login_profile" "xia_nguyen" {
  user                    = aws_iam_user.xia_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_nguyen__auth_4_devs" {
  user   = aws_iam_user.xia_nguyen.name
  groups = [aws_iam_group.auth_4_devs.name]
}

resource "aws_iam_user" "xia_rossi" {
  name = "axvel-1bmofe-xia.rossi"
}

resource "aws_iam_user_login_profile" "xia_rossi" {
  user                    = aws_iam_user.xia_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_rossi__mobile_4_devs" {
  user   = aws_iam_user.xia_rossi.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "xia_rossi__inj_pol_p10" {
  user       = aws_iam_user.xia_rossi.name
  policy_arn = aws_iam_policy.inj_pol_p10.arn
}

resource "aws_iam_user" "yara_brown" {
  name = "axvel-1bmofe-yara.brown"
}

resource "aws_iam_user_group_membership" "yara_brown__ml_5_devs" {
  user   = aws_iam_user.yara_brown.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "yara_chen" {
  name = "axvel-1bmofe-yara.chen"
}

resource "aws_iam_user_login_profile" "yara_chen" {
  user                    = aws_iam_user.yara_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_chen__support_2_devs" {
  user   = aws_iam_user.yara_chen.name
  groups = [aws_iam_group.support_2_devs.name]
}

resource "aws_iam_user" "yara_cohen" {
  name = "axvel-1bmofe-yara.cohen"
}

resource "aws_iam_user_group_membership" "yara_cohen__search_4_devs" {
  user   = aws_iam_user.yara_cohen.name
  groups = [aws_iam_group.search_4_devs.name]
}

resource "aws_iam_user" "yara_dubois" {
  name = "axvel-1bmofe-yara.dubois"
}

resource "aws_iam_user_login_profile" "yara_dubois" {
  user                    = aws_iam_user.yara_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_dubois__support_4_devs" {
  user   = aws_iam_user.yara_dubois.name
  groups = [aws_iam_group.support_4_devs.name]
}

resource "aws_iam_user_group_membership" "yara_dubois__billing_2_analysts" {
  user   = aws_iam_user.yara_dubois.name
  groups = [aws_iam_group.billing_2_analysts.name]
}

resource "aws_iam_user" "yara_gupta" {
  name = "axvel-1bmofe-yara.gupta"
}

resource "aws_iam_user_login_profile" "yara_gupta" {
  user                    = aws_iam_user.yara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_gupta__infra_2_devs" {
  user   = aws_iam_user.yara_gupta.name
  groups = [aws_iam_group.infra_2_devs.name]
}

resource "aws_iam_user_group_membership" "yara_gupta__infra_5_analysts" {
  user   = aws_iam_user.yara_gupta.name
  groups = [aws_iam_group.infra_5_analysts.name]
}

resource "aws_iam_user" "yara_haddad" {
  name = "axvel-1bmofe-yara.haddad"
}

resource "aws_iam_user_login_profile" "yara_haddad" {
  user                    = aws_iam_user.yara_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_haddad__search_analysts" {
  user   = aws_iam_user.yara_haddad.name
  groups = [aws_iam_group.search_analysts.name]
}

resource "aws_iam_user" "yara_khan" {
  name = "axvel-1bmofe-yara.khan"
}

resource "aws_iam_user_login_profile" "yara_khan" {
  user                    = aws_iam_user.yara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_khan__ml_analysts" {
  user   = aws_iam_user.yara_khan.name
  groups = [aws_iam_group.ml_analysts.name]
}

resource "aws_iam_user_group_membership" "yara_khan__api_4_analysts" {
  user   = aws_iam_user.yara_khan.name
  groups = [aws_iam_group.api_4_analysts.name]
}

resource "aws_iam_user" "yara_khan1590" {
  name = "axvel-1bmofe-yara.khan1590"
}

resource "aws_iam_user_group_membership" "yara_khan1590__web_3_devs" {
  user   = aws_iam_user.yara_khan1590.name
  groups = [aws_iam_group.web_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "yara_khan1590__base_readonly" {
  user       = aws_iam_user.yara_khan1590.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "yara_larsen" {
  name = "axvel-1bmofe-yara.larsen"
}

resource "aws_iam_user_login_profile" "yara_larsen" {
  user                    = aws_iam_user.yara_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_larsen__ml_5_devs" {
  user   = aws_iam_user.yara_larsen.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "yara_larsen390" {
  name = "axvel-1bmofe-yara.larsen390"
}

resource "aws_iam_user_login_profile" "yara_larsen390" {
  user                    = aws_iam_user.yara_larsen390.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_larsen390__data_6_devs" {
  user   = aws_iam_user.yara_larsen390.name
  groups = [aws_iam_group.data_6_devs.name]
}

resource "aws_iam_user" "yara_larsen5584" {
  name = "axvel-1bmofe-yara.larsen5584"
}

resource "aws_iam_user_login_profile" "yara_larsen5584" {
  user                    = aws_iam_user.yara_larsen5584.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_larsen5584__api_2_devs" {
  user   = aws_iam_user.yara_larsen5584.name
  groups = [aws_iam_group.api_2_devs.name]
}

resource "aws_iam_user" "yara_larsen8981" {
  name = "axvel-1bmofe-yara.larsen8981"
}

resource "aws_iam_user_login_profile" "yara_larsen8981" {
  user                    = aws_iam_user.yara_larsen8981.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_larsen8981__data_5_analysts" {
  user   = aws_iam_user.yara_larsen8981.name
  groups = [aws_iam_group.data_5_analysts.name]
}

resource "aws_iam_user" "yara_lopez" {
  name = "axvel-1bmofe-yara.lopez"
}

resource "aws_iam_user_login_profile" "yara_lopez" {
  user                    = aws_iam_user.yara_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_lopez__ml_5_devs" {
  user   = aws_iam_user.yara_lopez.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "yara_lopez__base_readonly" {
  user       = aws_iam_user.yara_lopez.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "yara_novak" {
  name = "axvel-1bmofe-yara.novak"
}

resource "aws_iam_user_login_profile" "yara_novak" {
  user                    = aws_iam_user.yara_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_novak__growth_6_devs" {
  user   = aws_iam_user.yara_novak.name
  groups = [aws_iam_group.growth_6_devs.name]
}

resource "aws_iam_user_group_membership" "yara_novak__data_6_analysts" {
  user   = aws_iam_user.yara_novak.name
  groups = [aws_iam_group.data_6_analysts.name]
}

resource "aws_iam_user" "yara_reddy" {
  name = "axvel-1bmofe-yara.reddy"
}

resource "aws_iam_user_group_membership" "yara_reddy__ml_5_devs" {
  user   = aws_iam_user.yara_reddy.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user_group_membership" "yara_reddy__api_7_analysts" {
  user   = aws_iam_user.yara_reddy.name
  groups = [aws_iam_group.api_7_analysts.name]
}

resource "aws_iam_user_policy_attachment" "yara_reddy__base_readonly" {
  user       = aws_iam_user.yara_reddy.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "yara_rossi" {
  name = "axvel-1bmofe-yara.rossi"
}

resource "aws_iam_user_login_profile" "yara_rossi" {
  user                    = aws_iam_user.yara_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_rossi__notifications_devs" {
  user   = aws_iam_user.yara_rossi.name
  groups = [aws_iam_group.notifications_devs.name]
}

resource "aws_iam_user" "yara_sato" {
  name = "axvel-1bmofe-yara.sato"
}

resource "aws_iam_user_group_membership" "yara_sato__auth_3_analysts" {
  user   = aws_iam_user.yara_sato.name
  groups = [aws_iam_group.auth_3_analysts.name]
}

resource "aws_iam_user" "yara_singh" {
  name = "axvel-1bmofe-yara.singh"
}

resource "aws_iam_user_login_profile" "yara_singh" {
  user                    = aws_iam_user.yara_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_singh__support_2_analysts" {
  user   = aws_iam_user.yara_singh.name
  groups = [aws_iam_group.support_2_analysts.name]
}

resource "aws_iam_user" "yara_smith" {
  name = "axvel-1bmofe-yara.smith"
}

resource "aws_iam_user_login_profile" "yara_smith" {
  user                    = aws_iam_user.yara_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_smith__ml_5_devs" {
  user   = aws_iam_user.yara_smith.name
  groups = [aws_iam_group.ml_5_devs.name]
}

resource "aws_iam_user" "yara_wong" {
  name = "axvel-1bmofe-yara.wong"
}

resource "aws_iam_user_login_profile" "yara_wong" {
  user                    = aws_iam_user.yara_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_wong__search_5_analysts" {
  user   = aws_iam_user.yara_wong.name
  groups = [aws_iam_group.search_5_analysts.name]
}

resource "aws_iam_user" "zed_ivanov" {
  name = "axvel-1bmofe-zed.ivanov"
}

resource "aws_iam_user_group_membership" "zed_ivanov__search_7_devs" {
  user   = aws_iam_user.zed_ivanov.name
  groups = [aws_iam_group.search_7_devs.name]
}

resource "aws_iam_user" "zed_kim" {
  name = "axvel-1bmofe-zed.kim"
}

resource "aws_iam_user_login_profile" "zed_kim" {
  user                    = aws_iam_user.zed_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_kim__data_4_devs" {
  user   = aws_iam_user.zed_kim.name
  groups = [aws_iam_group.data_4_devs.name]
}

resource "aws_iam_user_group_membership" "zed_kim__ml_6_analysts" {
  user   = aws_iam_user.zed_kim.name
  groups = [aws_iam_group.ml_6_analysts.name]
}

resource "aws_iam_user" "zed_kim2468" {
  name = "axvel-1bmofe-zed.kim2468"
}

resource "aws_iam_user_login_profile" "zed_kim2468" {
  user                    = aws_iam_user.zed_kim2468.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_kim2468__support_4_devs" {
  user   = aws_iam_user.zed_kim2468.name
  groups = [aws_iam_group.support_4_devs.name]
}

resource "aws_iam_user_group_membership" "zed_kim2468__support_analysts" {
  user   = aws_iam_user.zed_kim2468.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "zed_lopez" {
  name = "axvel-1bmofe-zed.lopez"
}

resource "aws_iam_user_login_profile" "zed_lopez" {
  user                    = aws_iam_user.zed_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_lopez__mobile_7_analysts" {
  user   = aws_iam_user.zed_lopez.name
  groups = [aws_iam_group.mobile_7_analysts.name]
}

resource "aws_iam_user_group_membership" "zed_lopez__support_4_analysts" {
  user   = aws_iam_user.zed_lopez.name
  groups = [aws_iam_group.support_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "zed_lopez__base_readonly" {
  user       = aws_iam_user.zed_lopez.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "zed_miller" {
  name = "axvel-1bmofe-zed.miller"
}

resource "aws_iam_user_login_profile" "zed_miller" {
  user                    = aws_iam_user.zed_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_miller__api_3_devs" {
  user   = aws_iam_user.zed_miller.name
  groups = [aws_iam_group.api_3_devs.name]
}

resource "aws_iam_user" "zed_muller" {
  name = "axvel-1bmofe-zed.muller"
}

resource "aws_iam_user_group_membership" "zed_muller__support_analysts" {
  user   = aws_iam_user.zed_muller.name
  groups = [aws_iam_group.support_analysts.name]
}

resource "aws_iam_user" "zed_patel" {
  name = "axvel-1bmofe-zed.patel"
}

resource "aws_iam_user_login_profile" "zed_patel" {
  user                    = aws_iam_user.zed_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_patel__data_2_devs" {
  user   = aws_iam_user.zed_patel.name
  groups = [aws_iam_group.data_2_devs.name]
}

resource "aws_iam_user" "zed_patel9988" {
  name = "axvel-1bmofe-zed.patel9988"
}

resource "aws_iam_user_login_profile" "zed_patel9988" {
  user                    = aws_iam_user.zed_patel9988.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_patel9988__search_5_devs" {
  user   = aws_iam_user.zed_patel9988.name
  groups = [aws_iam_group.search_5_devs.name]
}

resource "aws_iam_user" "zed_rossi" {
  name = "axvel-1bmofe-zed.rossi"
}

resource "aws_iam_user_login_profile" "zed_rossi" {
  user                    = aws_iam_user.zed_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_rossi__search_devs" {
  user   = aws_iam_user.zed_rossi.name
  groups = [aws_iam_group.search_devs.name]
}

resource "aws_iam_user" "zed_silva" {
  name = "axvel-1bmofe-zed.silva"
}

resource "aws_iam_user_login_profile" "zed_silva" {
  user                    = aws_iam_user.zed_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_silva__api_4_devs" {
  user   = aws_iam_user.zed_silva.name
  groups = [aws_iam_group.api_4_devs.name]
}

resource "aws_iam_user_group_membership" "zed_silva__ml_4_analysts" {
  user   = aws_iam_user.zed_silva.name
  groups = [aws_iam_group.ml_4_analysts.name]
}
