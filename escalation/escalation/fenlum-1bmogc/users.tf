resource "aws_iam_user" "adm_gus_dubois" {
  name = "fenlum-1bmogc-adm-gus.dubois"
}

resource "aws_iam_user_login_profile" "adm_gus_dubois" {
  user                    = aws_iam_user.adm_gus_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_gus_dubois__platform_admins" {
  user   = aws_iam_user.adm_gus_dubois.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_ian_haddad" {
  name = "fenlum-1bmogc-adm-ian.haddad"
}

resource "aws_iam_user_login_profile" "adm_ian_haddad" {
  user                    = aws_iam_user.adm_ian_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_ian_haddad__platform_admins" {
  user   = aws_iam_user.adm_ian_haddad.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_mei_patel" {
  name = "fenlum-1bmogc-adm-mei.patel"
}

resource "aws_iam_user_login_profile" "adm_mei_patel" {
  user                    = aws_iam_user.adm_mei_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_mei_patel__platform_admins" {
  user   = aws_iam_user.adm_mei_patel.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "alice_brown" {
  name = "fenlum-1bmogc-alice.brown"
}

resource "aws_iam_user_login_profile" "alice_brown" {
  user                    = aws_iam_user.alice_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_brown__kyc_analysts" {
  user   = aws_iam_user.alice_brown.name
  groups = [aws_iam_group.kyc_analysts.name]
}

resource "aws_iam_user" "alice_chen" {
  name = "fenlum-1bmogc-alice.chen"
}

resource "aws_iam_user_login_profile" "alice_chen" {
  user                    = aws_iam_user.alice_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_chen__risk_devs" {
  user   = aws_iam_user.alice_chen.name
  groups = [aws_iam_group.risk_devs.name]
}

resource "aws_iam_user" "alice_davis" {
  name = "fenlum-1bmogc-alice.davis"
}

resource "aws_iam_user_login_profile" "alice_davis" {
  user                    = aws_iam_user.alice_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_davis__payments_5_devs" {
  user   = aws_iam_user.alice_davis.name
  groups = [aws_iam_group.payments_5_devs.name]
}

resource "aws_iam_user_group_membership" "alice_davis__risk_6_analysts" {
  user   = aws_iam_user.alice_davis.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user" "alice_dubois" {
  name = "fenlum-1bmogc-alice.dubois"
}

resource "aws_iam_user_login_profile" "alice_dubois" {
  user                    = aws_iam_user.alice_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_dubois__kyc_2_devs" {
  user   = aws_iam_user.alice_dubois.name
  groups = [aws_iam_group.kyc_2_devs.name]
}

resource "aws_iam_user" "alice_gupta" {
  name = "fenlum-1bmogc-alice.gupta"
}

resource "aws_iam_user_login_profile" "alice_gupta" {
  user                    = aws_iam_user.alice_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_gupta__ledger_6_devs" {
  user   = aws_iam_user.alice_gupta.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user" "alice_jones" {
  name = "fenlum-1bmogc-alice.jones"
}

resource "aws_iam_user_login_profile" "alice_jones" {
  user                    = aws_iam_user.alice_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_jones__trading_6_devs" {
  user   = aws_iam_user.alice_jones.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user" "alice_khan" {
  name = "fenlum-1bmogc-alice.khan"
}

resource "aws_iam_user_login_profile" "alice_khan" {
  user                    = aws_iam_user.alice_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_khan__ledger_7_devs" {
  user   = aws_iam_user.alice_khan.name
  groups = [aws_iam_group.ledger_7_devs.name]
}

resource "aws_iam_user" "alice_lopez" {
  name = "fenlum-1bmogc-alice.lopez"
}

resource "aws_iam_user_login_profile" "alice_lopez" {
  user                    = aws_iam_user.alice_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_lopez__risk_2_analysts" {
  user   = aws_iam_user.alice_lopez.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user" "alice_lopez113" {
  name = "fenlum-1bmogc-alice.lopez113"
}

resource "aws_iam_user_login_profile" "alice_lopez113" {
  user                    = aws_iam_user.alice_lopez113.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_lopez113__mobile_5_devs" {
  user   = aws_iam_user.alice_lopez113.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user_group_membership" "alice_lopez113__risk_6_analysts" {
  user   = aws_iam_user.alice_lopez113.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user" "alice_miller" {
  name = "fenlum-1bmogc-alice.miller"
}

resource "aws_iam_user_login_profile" "alice_miller" {
  user                    = aws_iam_user.alice_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_miller__ledger_6_devs" {
  user   = aws_iam_user.alice_miller.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user_group_membership" "alice_miller__reporting_6_analysts" {
  user   = aws_iam_user.alice_miller.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "alice_miller__base_readonly" {
  user       = aws_iam_user.alice_miller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_miller756" {
  name = "fenlum-1bmogc-alice.miller756"
}

resource "aws_iam_user_login_profile" "alice_miller756" {
  user                    = aws_iam_user.alice_miller756.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_miller756__lending_3_devs" {
  user   = aws_iam_user.alice_miller756.name
  groups = [aws_iam_group.lending_3_devs.name]
}

resource "aws_iam_user" "alice_okafor" {
  name = "fenlum-1bmogc-alice.okafor"
}

resource "aws_iam_user_login_profile" "alice_okafor" {
  user                    = aws_iam_user.alice_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_okafor__ledger_devs" {
  user   = aws_iam_user.alice_okafor.name
  groups = [aws_iam_group.ledger_devs.name]
}

resource "aws_iam_user" "alice_okafor8507" {
  name = "fenlum-1bmogc-alice.okafor8507"
}

resource "aws_iam_user_group_membership" "alice_okafor8507__treasury_analysts" {
  user   = aws_iam_user.alice_okafor8507.name
  groups = [aws_iam_group.treasury_analysts.name]
}

resource "aws_iam_user" "alice_reddy" {
  name = "fenlum-1bmogc-alice.reddy"
}

resource "aws_iam_user_login_profile" "alice_reddy" {
  user                    = aws_iam_user.alice_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_reddy__fraud_7_devs" {
  user   = aws_iam_user.alice_reddy.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user" "alice_reddy2977" {
  name = "fenlum-1bmogc-alice.reddy2977"
}

resource "aws_iam_user_login_profile" "alice_reddy2977" {
  user                    = aws_iam_user.alice_reddy2977.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_reddy2977__reporting_3_devs" {
  user   = aws_iam_user.alice_reddy2977.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user" "alice_singh" {
  name = "fenlum-1bmogc-alice.singh"
}

resource "aws_iam_user_login_profile" "alice_singh" {
  user                    = aws_iam_user.alice_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_singh__fraud_6_devs" {
  user   = aws_iam_user.alice_singh.name
  groups = [aws_iam_group.fraud_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "alice_singh__base_readonly" {
  user       = aws_iam_user.alice_singh.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_smith" {
  name = "fenlum-1bmogc-alice.smith"
}

resource "aws_iam_user_group_membership" "alice_smith__payments_devs" {
  user   = aws_iam_user.alice_smith.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user_group_membership" "alice_smith__lending_6_analysts" {
  user   = aws_iam_user.alice_smith.name
  groups = [aws_iam_group.lending_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "alice_smith__base_readonly" {
  user       = aws_iam_user.alice_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_tanaka" {
  name = "fenlum-1bmogc-alice.tanaka"
}

resource "aws_iam_user_login_profile" "alice_tanaka" {
  user                    = aws_iam_user.alice_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_tanaka__ledger_2_devs" {
  user   = aws_iam_user.alice_tanaka.name
  groups = [aws_iam_group.ledger_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "alice_tanaka__base_readonly" {
  user       = aws_iam_user.alice_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "alice_wong" {
  name = "fenlum-1bmogc-alice.wong"
}

resource "aws_iam_user_login_profile" "alice_wong" {
  user                    = aws_iam_user.alice_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_wong__risk_5_devs" {
  user   = aws_iam_user.alice_wong.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user" "alice_wong2896" {
  name = "fenlum-1bmogc-alice.wong2896"
}

resource "aws_iam_user_login_profile" "alice_wong2896" {
  user                    = aws_iam_user.alice_wong2896.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_wong2896__payments_4_devs" {
  user   = aws_iam_user.alice_wong2896.name
  groups = [aws_iam_group.payments_4_devs.name]
}

resource "aws_iam_user" "alice_wong761" {
  name = "fenlum-1bmogc-alice.wong761"
}

resource "aws_iam_user_login_profile" "alice_wong761" {
  user                    = aws_iam_user.alice_wong761.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "alice_wong761__trading_4_devs" {
  user   = aws_iam_user.alice_wong761.name
  groups = [aws_iam_group.trading_4_devs.name]
}

resource "aws_iam_user" "amit_cohen" {
  name = "fenlum-1bmogc-amit.cohen"
}

resource "aws_iam_user_login_profile" "amit_cohen" {
  user                    = aws_iam_user.amit_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_cohen__risk_5_devs" {
  user   = aws_iam_user.amit_cohen.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user_group_membership" "amit_cohen__lending_4_analysts" {
  user   = aws_iam_user.amit_cohen.name
  groups = [aws_iam_group.lending_4_analysts.name]
}

resource "aws_iam_user" "amit_davis" {
  name = "fenlum-1bmogc-amit.davis"
}

resource "aws_iam_user_login_profile" "amit_davis" {
  user                    = aws_iam_user.amit_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_davis__treasury_4_devs" {
  user   = aws_iam_user.amit_davis.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "amit_davis__base_readonly" {
  user       = aws_iam_user.amit_davis.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_gupta" {
  name = "fenlum-1bmogc-amit.gupta"
}

resource "aws_iam_user_login_profile" "amit_gupta" {
  user                    = aws_iam_user.amit_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_gupta__ledger_6_analysts" {
  user   = aws_iam_user.amit_gupta.name
  groups = [aws_iam_group.ledger_6_analysts.name]
}

resource "aws_iam_user" "amit_gupta2128" {
  name = "fenlum-1bmogc-amit.gupta2128"
}

resource "aws_iam_user_group_membership" "amit_gupta2128__fraud_3_devs" {
  user   = aws_iam_user.amit_gupta2128.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user_group_membership" "amit_gupta2128__treasury_7_analysts" {
  user   = aws_iam_user.amit_gupta2128.name
  groups = [aws_iam_group.treasury_7_analysts.name]
}

resource "aws_iam_user" "amit_khan" {
  name = "fenlum-1bmogc-amit.khan"
}

resource "aws_iam_user_login_profile" "amit_khan" {
  user                    = aws_iam_user.amit_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_khan__kyc_2_devs" {
  user   = aws_iam_user.amit_khan.name
  groups = [aws_iam_group.kyc_2_devs.name]
}

resource "aws_iam_user" "amit_larsen" {
  name = "fenlum-1bmogc-amit.larsen"
}

resource "aws_iam_user_login_profile" "amit_larsen" {
  user                    = aws_iam_user.amit_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_larsen__ledger_3_devs" {
  user   = aws_iam_user.amit_larsen.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user" "amit_mehta" {
  name = "fenlum-1bmogc-amit.mehta"
}

resource "aws_iam_user_login_profile" "amit_mehta" {
  user                    = aws_iam_user.amit_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_mehta__mobile_6_analysts" {
  user   = aws_iam_user.amit_mehta.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "amit_mehta__base_readonly" {
  user       = aws_iam_user.amit_mehta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_mehta667" {
  name = "fenlum-1bmogc-amit.mehta667"
}

resource "aws_iam_user_login_profile" "amit_mehta667" {
  user                    = aws_iam_user.amit_mehta667.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_mehta667__kyc_2_devs" {
  user   = aws_iam_user.amit_mehta667.name
  groups = [aws_iam_group.kyc_2_devs.name]
}

resource "aws_iam_user" "amit_miller" {
  name = "fenlum-1bmogc-amit.miller"
}

resource "aws_iam_user_login_profile" "amit_miller" {
  user                    = aws_iam_user.amit_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_miller__risk_3_analysts" {
  user   = aws_iam_user.amit_miller.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "amit_miller__base_readonly" {
  user       = aws_iam_user.amit_miller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_muller" {
  name = "fenlum-1bmogc-amit.muller"
}

resource "aws_iam_user_login_profile" "amit_muller" {
  user                    = aws_iam_user.amit_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_muller__data_eng_3_devs" {
  user   = aws_iam_user.amit_muller.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user" "amit_nguyen" {
  name = "fenlum-1bmogc-amit.nguyen"
}

resource "aws_iam_user_group_membership" "amit_nguyen__kyc_4_devs" {
  user   = aws_iam_user.amit_nguyen.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user" "amit_nguyen4606" {
  name = "fenlum-1bmogc-amit.nguyen4606"
}

resource "aws_iam_user_login_profile" "amit_nguyen4606" {
  user                    = aws_iam_user.amit_nguyen4606.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_nguyen4606__reporting_2_devs" {
  user   = aws_iam_user.amit_nguyen4606.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "amit_nguyen9434" {
  name = "fenlum-1bmogc-amit.nguyen9434"
}

resource "aws_iam_user_login_profile" "amit_nguyen9434" {
  user                    = aws_iam_user.amit_nguyen9434.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_nguyen9434__reporting_6_devs" {
  user   = aws_iam_user.amit_nguyen9434.name
  groups = [aws_iam_group.reporting_6_devs.name]
}

resource "aws_iam_user_group_membership" "amit_nguyen9434__lending_5_analysts" {
  user   = aws_iam_user.amit_nguyen9434.name
  groups = [aws_iam_group.lending_5_analysts.name]
}

resource "aws_iam_user" "amit_novak" {
  name = "fenlum-1bmogc-amit.novak"
}

resource "aws_iam_user_login_profile" "amit_novak" {
  user                    = aws_iam_user.amit_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_novak__kyc_3_devs" {
  user   = aws_iam_user.amit_novak.name
  groups = [aws_iam_group.kyc_3_devs.name]
}

resource "aws_iam_user_group_membership" "amit_novak__platform_6_analysts" {
  user   = aws_iam_user.amit_novak.name
  groups = [aws_iam_group.platform_6_analysts.name]
}

resource "aws_iam_user" "amit_novak9275" {
  name = "fenlum-1bmogc-amit.novak9275"
}

resource "aws_iam_user_group_membership" "amit_novak9275__lending_2_devs" {
  user   = aws_iam_user.amit_novak9275.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "amit_novak9275__base_readonly" {
  user       = aws_iam_user.amit_novak9275.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "amit_okafor" {
  name = "fenlum-1bmogc-amit.okafor"
}

resource "aws_iam_user_login_profile" "amit_okafor" {
  user                    = aws_iam_user.amit_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_okafor__platform_2_devs" {
  user   = aws_iam_user.amit_okafor.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user_group_membership" "amit_okafor__treasury_analysts" {
  user   = aws_iam_user.amit_okafor.name
  groups = [aws_iam_group.treasury_analysts.name]
}

resource "aws_iam_user" "amit_patel" {
  name = "fenlum-1bmogc-amit.patel"
}

resource "aws_iam_user_login_profile" "amit_patel" {
  user                    = aws_iam_user.amit_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_patel__kyc_2_analysts" {
  user   = aws_iam_user.amit_patel.name
  groups = [aws_iam_group.kyc_2_analysts.name]
}

resource "aws_iam_user" "amit_rossi" {
  name = "fenlum-1bmogc-amit.rossi"
}

resource "aws_iam_user_login_profile" "amit_rossi" {
  user                    = aws_iam_user.amit_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_rossi__lending_4_devs" {
  user   = aws_iam_user.amit_rossi.name
  groups = [aws_iam_group.lending_4_devs.name]
}

resource "aws_iam_user" "amit_sato" {
  name = "fenlum-1bmogc-amit.sato"
}

resource "aws_iam_user_login_profile" "amit_sato" {
  user                    = aws_iam_user.amit_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_sato__reporting_2_devs" {
  user   = aws_iam_user.amit_sato.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "amit_singh" {
  name = "fenlum-1bmogc-amit.singh"
}

resource "aws_iam_user_login_profile" "amit_singh" {
  user                    = aws_iam_user.amit_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_singh__risk_7_devs" {
  user   = aws_iam_user.amit_singh.name
  groups = [aws_iam_group.risk_7_devs.name]
}

resource "aws_iam_user" "amit_smith" {
  name = "fenlum-1bmogc-amit.smith"
}

resource "aws_iam_user_login_profile" "amit_smith" {
  user                    = aws_iam_user.amit_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_smith__fraud_5_devs" {
  user   = aws_iam_user.amit_smith.name
  groups = [aws_iam_group.fraud_5_devs.name]
}

resource "aws_iam_user_group_membership" "amit_smith__kyc_2_analysts" {
  user   = aws_iam_user.amit_smith.name
  groups = [aws_iam_group.kyc_2_analysts.name]
}

resource "aws_iam_user" "amit_tanaka" {
  name = "fenlum-1bmogc-amit.tanaka"
}

resource "aws_iam_user_group_membership" "amit_tanaka__trading_6_devs" {
  user   = aws_iam_user.amit_tanaka.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user" "bela_ali" {
  name = "fenlum-1bmogc-bela.ali"
}

resource "aws_iam_user_login_profile" "bela_ali" {
  user                    = aws_iam_user.bela_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_ali__ledger_6_devs" {
  user   = aws_iam_user.bela_ali.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user" "bela_chen" {
  name = "fenlum-1bmogc-bela.chen"
}

resource "aws_iam_user_login_profile" "bela_chen" {
  user                    = aws_iam_user.bela_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_chen__data_eng_2_analysts" {
  user   = aws_iam_user.bela_chen.name
  groups = [aws_iam_group.data_eng_2_analysts.name]
}

resource "aws_iam_user" "bela_davis" {
  name = "fenlum-1bmogc-bela.davis"
}

resource "aws_iam_user_login_profile" "bela_davis" {
  user                    = aws_iam_user.bela_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_davis__treasury_5_devs" {
  user   = aws_iam_user.bela_davis.name
  groups = [aws_iam_group.treasury_5_devs.name]
}

resource "aws_iam_user" "bela_dubois" {
  name = "fenlum-1bmogc-bela.dubois"
}

resource "aws_iam_user_login_profile" "bela_dubois" {
  user                    = aws_iam_user.bela_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_dubois__mobile_2_devs" {
  user   = aws_iam_user.bela_dubois.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_group_membership" "bela_dubois__payments_6_analysts" {
  user   = aws_iam_user.bela_dubois.name
  groups = [aws_iam_group.payments_6_analysts.name]
}

resource "aws_iam_user" "bela_garcia" {
  name = "fenlum-1bmogc-bela.garcia"
}

resource "aws_iam_user_login_profile" "bela_garcia" {
  user                    = aws_iam_user.bela_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_garcia__platform_2_analysts" {
  user   = aws_iam_user.bela_garcia.name
  groups = [aws_iam_group.platform_2_analysts.name]
}

resource "aws_iam_user" "bela_garcia1501" {
  name = "fenlum-1bmogc-bela.garcia1501"
}

resource "aws_iam_user_group_membership" "bela_garcia1501__trading_6_devs" {
  user   = aws_iam_user.bela_garcia1501.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user" "bela_gupta" {
  name = "fenlum-1bmogc-bela.gupta"
}

resource "aws_iam_user_login_profile" "bela_gupta" {
  user                    = aws_iam_user.bela_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_gupta__kyc_4_devs" {
  user   = aws_iam_user.bela_gupta.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user" "bela_ivanov" {
  name = "fenlum-1bmogc-bela.ivanov"
}

resource "aws_iam_user_login_profile" "bela_ivanov" {
  user                    = aws_iam_user.bela_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_ivanov__reporting_2_analysts" {
  user   = aws_iam_user.bela_ivanov.name
  groups = [aws_iam_group.reporting_2_analysts.name]
}

resource "aws_iam_user" "bela_kim" {
  name = "fenlum-1bmogc-bela.kim"
}

resource "aws_iam_user_login_profile" "bela_kim" {
  user                    = aws_iam_user.bela_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_kim__treasury_3_devs" {
  user   = aws_iam_user.bela_kim.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user" "bela_lopez" {
  name = "fenlum-1bmogc-bela.lopez"
}

resource "aws_iam_user_login_profile" "bela_lopez" {
  user                    = aws_iam_user.bela_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_lopez__treasury_6_devs" {
  user   = aws_iam_user.bela_lopez.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user" "bela_lopez4206" {
  name = "fenlum-1bmogc-bela.lopez4206"
}

resource "aws_iam_user_group_membership" "bela_lopez4206__reporting_2_devs" {
  user   = aws_iam_user.bela_lopez4206.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "bela_lopez7681" {
  name = "fenlum-1bmogc-bela.lopez7681"
}

resource "aws_iam_user_login_profile" "bela_lopez7681" {
  user                    = aws_iam_user.bela_lopez7681.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_lopez7681__treasury_7_analysts" {
  user   = aws_iam_user.bela_lopez7681.name
  groups = [aws_iam_group.treasury_7_analysts.name]
}

resource "aws_iam_user" "bela_mehta" {
  name = "fenlum-1bmogc-bela.mehta"
}

resource "aws_iam_user_login_profile" "bela_mehta" {
  user                    = aws_iam_user.bela_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_mehta__fraud_4_devs" {
  user   = aws_iam_user.bela_mehta.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "bela_mehta__base_readonly" {
  user       = aws_iam_user.bela_mehta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "bela_mehta4104" {
  name = "fenlum-1bmogc-bela.mehta4104"
}

resource "aws_iam_user_group_membership" "bela_mehta4104__lending_3_devs" {
  user   = aws_iam_user.bela_mehta4104.name
  groups = [aws_iam_group.lending_3_devs.name]
}

resource "aws_iam_user" "bela_miller" {
  name = "fenlum-1bmogc-bela.miller"
}

resource "aws_iam_user_group_membership" "bela_miller__treasury_2_devs" {
  user   = aws_iam_user.bela_miller.name
  groups = [aws_iam_group.treasury_2_devs.name]
}

resource "aws_iam_user" "bela_nguyen" {
  name = "fenlum-1bmogc-bela.nguyen"
}

resource "aws_iam_user_login_profile" "bela_nguyen" {
  user                    = aws_iam_user.bela_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_nguyen__trading_7_analysts" {
  user   = aws_iam_user.bela_nguyen.name
  groups = [aws_iam_group.trading_7_analysts.name]
}

resource "aws_iam_user_group_membership" "bela_nguyen__trading_analysts" {
  user   = aws_iam_user.bela_nguyen.name
  groups = [aws_iam_group.trading_analysts.name]
}

resource "aws_iam_user" "bela_novak" {
  name = "fenlum-1bmogc-bela.novak"
}

resource "aws_iam_user_login_profile" "bela_novak" {
  user                    = aws_iam_user.bela_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_novak__kyc_4_devs" {
  user   = aws_iam_user.bela_novak.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user" "bela_novak5537" {
  name = "fenlum-1bmogc-bela.novak5537"
}

resource "aws_iam_user_login_profile" "bela_novak5537" {
  user                    = aws_iam_user.bela_novak5537.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_novak5537__reporting_3_analysts" {
  user   = aws_iam_user.bela_novak5537.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "bela_okafor" {
  name = "fenlum-1bmogc-bela.okafor"
}

resource "aws_iam_user_login_profile" "bela_okafor" {
  user                    = aws_iam_user.bela_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_okafor__treasury_7_devs" {
  user   = aws_iam_user.bela_okafor.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "bela_patel" {
  name = "fenlum-1bmogc-bela.patel"
}

resource "aws_iam_user_group_membership" "bela_patel__risk_5_devs" {
  user   = aws_iam_user.bela_patel.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user_group_membership" "bela_patel__lending_analysts" {
  user   = aws_iam_user.bela_patel.name
  groups = [aws_iam_group.lending_analysts.name]
}

resource "aws_iam_user" "bela_reddy" {
  name = "fenlum-1bmogc-bela.reddy"
}

resource "aws_iam_user_login_profile" "bela_reddy" {
  user                    = aws_iam_user.bela_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_reddy__treasury_7_devs" {
  user   = aws_iam_user.bela_reddy.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "bela_sato" {
  name = "fenlum-1bmogc-bela.sato"
}

resource "aws_iam_user_group_membership" "bela_sato__trading_3_devs" {
  user   = aws_iam_user.bela_sato.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user" "bela_silva" {
  name = "fenlum-1bmogc-bela.silva"
}

resource "aws_iam_user_login_profile" "bela_silva" {
  user                    = aws_iam_user.bela_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_silva__ledger_4_devs" {
  user   = aws_iam_user.bela_silva.name
  groups = [aws_iam_group.ledger_4_devs.name]
}

resource "aws_iam_user" "bela_silva1530" {
  name = "fenlum-1bmogc-bela.silva1530"
}

resource "aws_iam_user_login_profile" "bela_silva1530" {
  user                    = aws_iam_user.bela_silva1530.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_silva1530__trading_3_devs" {
  user   = aws_iam_user.bela_silva1530.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user_group_membership" "bela_silva1530__treasury_3_analysts" {
  user   = aws_iam_user.bela_silva1530.name
  groups = [aws_iam_group.treasury_3_analysts.name]
}

resource "aws_iam_user" "bela_singh" {
  name = "fenlum-1bmogc-bela.singh"
}

resource "aws_iam_user_group_membership" "bela_singh__payments_analysts" {
  user   = aws_iam_user.bela_singh.name
  groups = [aws_iam_group.payments_analysts.name]
}

resource "aws_iam_user" "bela_singh4388" {
  name = "fenlum-1bmogc-bela.singh4388"
}

resource "aws_iam_user_login_profile" "bela_singh4388" {
  user                    = aws_iam_user.bela_singh4388.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_singh4388__lending_7_devs" {
  user   = aws_iam_user.bela_singh4388.name
  groups = [aws_iam_group.lending_7_devs.name]
}

resource "aws_iam_user" "bela_smith" {
  name = "fenlum-1bmogc-bela.smith"
}

resource "aws_iam_user_login_profile" "bela_smith" {
  user                    = aws_iam_user.bela_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_smith__lending_6_devs" {
  user   = aws_iam_user.bela_smith.name
  groups = [aws_iam_group.lending_6_devs.name]
}

resource "aws_iam_user" "bela_tanaka" {
  name = "fenlum-1bmogc-bela.tanaka"
}

resource "aws_iam_user_login_profile" "bela_tanaka" {
  user                    = aws_iam_user.bela_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_tanaka__treasury_5_analysts" {
  user   = aws_iam_user.bela_tanaka.name
  groups = [aws_iam_group.treasury_5_analysts.name]
}

resource "aws_iam_user" "bela_tanaka8094" {
  name = "fenlum-1bmogc-bela.tanaka8094"
}

resource "aws_iam_user_login_profile" "bela_tanaka8094" {
  user                    = aws_iam_user.bela_tanaka8094.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_tanaka8094__lending_devs" {
  user   = aws_iam_user.bela_tanaka8094.name
  groups = [aws_iam_group.lending_devs.name]
}

resource "aws_iam_user" "bela_wong" {
  name = "fenlum-1bmogc-bela.wong"
}

resource "aws_iam_user_login_profile" "bela_wong" {
  user                    = aws_iam_user.bela_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_wong__fraud_4_analysts" {
  user   = aws_iam_user.bela_wong.name
  groups = [aws_iam_group.fraud_4_analysts.name]
}

resource "aws_iam_user" "bob_ali" {
  name = "fenlum-1bmogc-bob.ali"
}

resource "aws_iam_user_login_profile" "bob_ali" {
  user                    = aws_iam_user.bob_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_ali__treasury_6_analysts" {
  user   = aws_iam_user.bob_ali.name
  groups = [aws_iam_group.treasury_6_analysts.name]
}

resource "aws_iam_user" "bob_brown" {
  name = "fenlum-1bmogc-bob.brown"
}

resource "aws_iam_user_group_membership" "bob_brown__payments_7_devs" {
  user   = aws_iam_user.bob_brown.name
  groups = [aws_iam_group.payments_7_devs.name]
}

resource "aws_iam_user" "bob_gupta" {
  name = "fenlum-1bmogc-bob.gupta"
}

resource "aws_iam_user_group_membership" "bob_gupta__reporting_3_devs" {
  user   = aws_iam_user.bob_gupta.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user_group_membership" "bob_gupta__data_eng_6_analysts" {
  user   = aws_iam_user.bob_gupta.name
  groups = [aws_iam_group.data_eng_6_analysts.name]
}

resource "aws_iam_user" "bob_jones" {
  name = "fenlum-1bmogc-bob.jones"
}

resource "aws_iam_user_login_profile" "bob_jones" {
  user                    = aws_iam_user.bob_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_jones__reporting_devs" {
  user   = aws_iam_user.bob_jones.name
  groups = [aws_iam_group.reporting_devs.name]
}

resource "aws_iam_user" "bob_larsen" {
  name = "fenlum-1bmogc-bob.larsen"
}

resource "aws_iam_user_login_profile" "bob_larsen" {
  user                    = aws_iam_user.bob_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_larsen__payments_4_devs" {
  user   = aws_iam_user.bob_larsen.name
  groups = [aws_iam_group.payments_4_devs.name]
}

resource "aws_iam_user" "bob_lopez" {
  name = "fenlum-1bmogc-bob.lopez"
}

resource "aws_iam_user_login_profile" "bob_lopez" {
  user                    = aws_iam_user.bob_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_lopez__fraud_2_devs" {
  user   = aws_iam_user.bob_lopez.name
  groups = [aws_iam_group.fraud_2_devs.name]
}

resource "aws_iam_user" "bob_lopez1191" {
  name = "fenlum-1bmogc-bob.lopez1191"
}

resource "aws_iam_user_login_profile" "bob_lopez1191" {
  user                    = aws_iam_user.bob_lopez1191.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_lopez1191__platform_analysts" {
  user   = aws_iam_user.bob_lopez1191.name
  groups = [aws_iam_group.platform_analysts.name]
}

resource "aws_iam_user_group_membership" "bob_lopez1191__risk_7_analysts" {
  user   = aws_iam_user.bob_lopez1191.name
  groups = [aws_iam_group.risk_7_analysts.name]
}

resource "aws_iam_user" "bob_lopez3165" {
  name = "fenlum-1bmogc-bob.lopez3165"
}

resource "aws_iam_user_login_profile" "bob_lopez3165" {
  user                    = aws_iam_user.bob_lopez3165.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_lopez3165__mobile_devs" {
  user   = aws_iam_user.bob_lopez3165.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "bob_lopez7577" {
  name = "fenlum-1bmogc-bob.lopez7577"
}

resource "aws_iam_user_group_membership" "bob_lopez7577__trading_devs" {
  user   = aws_iam_user.bob_lopez7577.name
  groups = [aws_iam_group.trading_devs.name]
}

resource "aws_iam_user" "bob_mehta" {
  name = "fenlum-1bmogc-bob.mehta"
}

resource "aws_iam_user_login_profile" "bob_mehta" {
  user                    = aws_iam_user.bob_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_mehta__fraud_5_analysts" {
  user   = aws_iam_user.bob_mehta.name
  groups = [aws_iam_group.fraud_5_analysts.name]
}

resource "aws_iam_user" "bob_miller" {
  name = "fenlum-1bmogc-bob.miller"
}

resource "aws_iam_user_group_membership" "bob_miller__kyc_2_analysts" {
  user   = aws_iam_user.bob_miller.name
  groups = [aws_iam_group.kyc_2_analysts.name]
}

resource "aws_iam_user" "bob_muller" {
  name = "fenlum-1bmogc-bob.muller"
}

resource "aws_iam_user_login_profile" "bob_muller" {
  user                    = aws_iam_user.bob_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_muller__kyc_5_devs" {
  user   = aws_iam_user.bob_muller.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "bob_nguyen" {
  name = "fenlum-1bmogc-bob.nguyen"
}

resource "aws_iam_user_login_profile" "bob_nguyen" {
  user                    = aws_iam_user.bob_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_nguyen__mobile_devs" {
  user   = aws_iam_user.bob_nguyen.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "bob_novak" {
  name = "fenlum-1bmogc-bob.novak"
}

resource "aws_iam_user_group_membership" "bob_novak__lending_2_devs" {
  user   = aws_iam_user.bob_novak.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user" "bob_rossi" {
  name = "fenlum-1bmogc-bob.rossi"
}

resource "aws_iam_user_login_profile" "bob_rossi" {
  user                    = aws_iam_user.bob_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_rossi__kyc_3_devs" {
  user   = aws_iam_user.bob_rossi.name
  groups = [aws_iam_group.kyc_3_devs.name]
}

resource "aws_iam_user" "bob_rossi2029" {
  name = "fenlum-1bmogc-bob.rossi2029"
}

resource "aws_iam_user_login_profile" "bob_rossi2029" {
  user                    = aws_iam_user.bob_rossi2029.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_rossi2029__trading_3_analysts" {
  user   = aws_iam_user.bob_rossi2029.name
  groups = [aws_iam_group.trading_3_analysts.name]
}

resource "aws_iam_user" "bob_singh" {
  name = "fenlum-1bmogc-bob.singh"
}

resource "aws_iam_user_login_profile" "bob_singh" {
  user                    = aws_iam_user.bob_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_singh__platform_5_devs" {
  user   = aws_iam_user.bob_singh.name
  groups = [aws_iam_group.platform_5_devs.name]
}

resource "aws_iam_user" "bob_singh4305" {
  name = "fenlum-1bmogc-bob.singh4305"
}

resource "aws_iam_user_group_membership" "bob_singh4305__mobile_devs" {
  user   = aws_iam_user.bob_singh4305.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "carol_chen" {
  name = "fenlum-1bmogc-carol.chen"
}

resource "aws_iam_user_login_profile" "carol_chen" {
  user                    = aws_iam_user.carol_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_chen__mobile_devs" {
  user   = aws_iam_user.carol_chen.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_group_membership" "carol_chen__treasury_5_analysts" {
  user   = aws_iam_user.carol_chen.name
  groups = [aws_iam_group.treasury_5_analysts.name]
}

resource "aws_iam_user" "carol_cohen" {
  name = "fenlum-1bmogc-carol.cohen"
}

resource "aws_iam_user_login_profile" "carol_cohen" {
  user                    = aws_iam_user.carol_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_cohen__treasury_7_devs" {
  user   = aws_iam_user.carol_cohen.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "carol_dubois" {
  name = "fenlum-1bmogc-carol.dubois"
}

resource "aws_iam_user_group_membership" "carol_dubois__treasury_3_devs" {
  user   = aws_iam_user.carol_dubois.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user" "carol_dubois8437" {
  name = "fenlum-1bmogc-carol.dubois8437"
}

resource "aws_iam_user_login_profile" "carol_dubois8437" {
  user                    = aws_iam_user.carol_dubois8437.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_dubois8437__fraud_4_devs" {
  user   = aws_iam_user.carol_dubois8437.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user_group_membership" "carol_dubois8437__payments_5_analysts" {
  user   = aws_iam_user.carol_dubois8437.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user" "carol_garcia" {
  name = "fenlum-1bmogc-carol.garcia"
}

resource "aws_iam_user_group_membership" "carol_garcia__fraud_5_analysts" {
  user   = aws_iam_user.carol_garcia.name
  groups = [aws_iam_group.fraud_5_analysts.name]
}

resource "aws_iam_user" "carol_garcia9653" {
  name = "fenlum-1bmogc-carol.garcia9653"
}

resource "aws_iam_user_login_profile" "carol_garcia9653" {
  user                    = aws_iam_user.carol_garcia9653.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_garcia9653__treasury_devs" {
  user   = aws_iam_user.carol_garcia9653.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "carol_haddad" {
  name = "fenlum-1bmogc-carol.haddad"
}

resource "aws_iam_user_login_profile" "carol_haddad" {
  user                    = aws_iam_user.carol_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_haddad__fraud_3_devs" {
  user   = aws_iam_user.carol_haddad.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user" "carol_ivanov" {
  name = "fenlum-1bmogc-carol.ivanov"
}

resource "aws_iam_user_group_membership" "carol_ivanov__trading_6_devs" {
  user   = aws_iam_user.carol_ivanov.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user" "carol_khan" {
  name = "fenlum-1bmogc-carol.khan"
}

resource "aws_iam_user_login_profile" "carol_khan" {
  user                    = aws_iam_user.carol_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_khan__reporting_3_devs" {
  user   = aws_iam_user.carol_khan.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user_group_membership" "carol_khan__lending_2_analysts" {
  user   = aws_iam_user.carol_khan.name
  groups = [aws_iam_group.lending_2_analysts.name]
}

resource "aws_iam_user" "carol_khan9624" {
  name = "fenlum-1bmogc-carol.khan9624"
}

resource "aws_iam_user_login_profile" "carol_khan9624" {
  user                    = aws_iam_user.carol_khan9624.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_khan9624__trading_7_devs" {
  user   = aws_iam_user.carol_khan9624.name
  groups = [aws_iam_group.trading_7_devs.name]
}

resource "aws_iam_user_group_membership" "carol_khan9624__platform_3_analysts" {
  user   = aws_iam_user.carol_khan9624.name
  groups = [aws_iam_group.platform_3_analysts.name]
}

resource "aws_iam_user" "carol_larsen" {
  name = "fenlum-1bmogc-carol.larsen"
}

resource "aws_iam_user_login_profile" "carol_larsen" {
  user                    = aws_iam_user.carol_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_larsen__reporting_3_devs" {
  user   = aws_iam_user.carol_larsen.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user" "carol_larsen6569" {
  name = "fenlum-1bmogc-carol.larsen6569"
}

resource "aws_iam_user_login_profile" "carol_larsen6569" {
  user                    = aws_iam_user.carol_larsen6569.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_larsen6569__trading_7_devs" {
  user   = aws_iam_user.carol_larsen6569.name
  groups = [aws_iam_group.trading_7_devs.name]
}

resource "aws_iam_user" "carol_mehta" {
  name = "fenlum-1bmogc-carol.mehta"
}

resource "aws_iam_user_login_profile" "carol_mehta" {
  user                    = aws_iam_user.carol_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_mehta__treasury_analysts" {
  user   = aws_iam_user.carol_mehta.name
  groups = [aws_iam_group.treasury_analysts.name]
}

resource "aws_iam_user_group_membership" "carol_mehta__risk_3_analysts" {
  user   = aws_iam_user.carol_mehta.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user" "carol_miller" {
  name = "fenlum-1bmogc-carol.miller"
}

resource "aws_iam_user_login_profile" "carol_miller" {
  user                    = aws_iam_user.carol_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_miller__ledger_2_devs" {
  user   = aws_iam_user.carol_miller.name
  groups = [aws_iam_group.ledger_2_devs.name]
}

resource "aws_iam_user" "carol_miller7263" {
  name = "fenlum-1bmogc-carol.miller7263"
}

resource "aws_iam_user_login_profile" "carol_miller7263" {
  user                    = aws_iam_user.carol_miller7263.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_miller7263__data_eng_5_analysts" {
  user   = aws_iam_user.carol_miller7263.name
  groups = [aws_iam_group.data_eng_5_analysts.name]
}

resource "aws_iam_user" "carol_muller" {
  name = "fenlum-1bmogc-carol.muller"
}

resource "aws_iam_user_login_profile" "carol_muller" {
  user                    = aws_iam_user.carol_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_muller__ledger_7_devs" {
  user   = aws_iam_user.carol_muller.name
  groups = [aws_iam_group.ledger_7_devs.name]
}

resource "aws_iam_user" "carol_novak" {
  name = "fenlum-1bmogc-carol.novak"
}

resource "aws_iam_user_login_profile" "carol_novak" {
  user                    = aws_iam_user.carol_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_novak__reporting_5_analysts" {
  user   = aws_iam_user.carol_novak.name
  groups = [aws_iam_group.reporting_5_analysts.name]
}

resource "aws_iam_user" "carol_novak3560" {
  name = "fenlum-1bmogc-carol.novak3560"
}

resource "aws_iam_user_login_profile" "carol_novak3560" {
  user                    = aws_iam_user.carol_novak3560.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_novak3560__treasury_7_devs" {
  user   = aws_iam_user.carol_novak3560.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "carol_okafor" {
  name = "fenlum-1bmogc-carol.okafor"
}

resource "aws_iam_user_login_profile" "carol_okafor" {
  user                    = aws_iam_user.carol_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_okafor__payments_devs" {
  user   = aws_iam_user.carol_okafor.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user" "carol_okafor8763" {
  name = "fenlum-1bmogc-carol.okafor8763"
}

resource "aws_iam_user_login_profile" "carol_okafor8763" {
  user                    = aws_iam_user.carol_okafor8763.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_okafor8763__fraud_4_devs" {
  user   = aws_iam_user.carol_okafor8763.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user" "carol_patel" {
  name = "fenlum-1bmogc-carol.patel"
}

resource "aws_iam_user_login_profile" "carol_patel" {
  user                    = aws_iam_user.carol_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_patel__ledger_4_devs" {
  user   = aws_iam_user.carol_patel.name
  groups = [aws_iam_group.ledger_4_devs.name]
}

resource "aws_iam_user" "carol_reddy" {
  name = "fenlum-1bmogc-carol.reddy"
}

resource "aws_iam_user_group_membership" "carol_reddy__payments_7_devs" {
  user   = aws_iam_user.carol_reddy.name
  groups = [aws_iam_group.payments_7_devs.name]
}

resource "aws_iam_user" "carol_reddy5558" {
  name = "fenlum-1bmogc-carol.reddy5558"
}

resource "aws_iam_user_login_profile" "carol_reddy5558" {
  user                    = aws_iam_user.carol_reddy5558.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_reddy5558__data_eng_devs" {
  user   = aws_iam_user.carol_reddy5558.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user_group_membership" "carol_reddy5558__ledger_7_analysts" {
  user   = aws_iam_user.carol_reddy5558.name
  groups = [aws_iam_group.ledger_7_analysts.name]
}

resource "aws_iam_user" "carol_rossi" {
  name = "fenlum-1bmogc-carol.rossi"
}

resource "aws_iam_user_login_profile" "carol_rossi" {
  user                    = aws_iam_user.carol_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_rossi__mobile_3_devs" {
  user   = aws_iam_user.carol_rossi.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "carol_smith" {
  name = "fenlum-1bmogc-carol.smith"
}

resource "aws_iam_user_login_profile" "carol_smith" {
  user                    = aws_iam_user.carol_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_smith__reporting_devs" {
  user   = aws_iam_user.carol_smith.name
  groups = [aws_iam_group.reporting_devs.name]
}

resource "aws_iam_user" "carol_tanaka" {
  name = "fenlum-1bmogc-carol.tanaka"
}

resource "aws_iam_user_login_profile" "carol_tanaka" {
  user                    = aws_iam_user.carol_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_tanaka__trading_5_analysts" {
  user   = aws_iam_user.carol_tanaka.name
  groups = [aws_iam_group.trading_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "carol_tanaka__base_readonly" {
  user       = aws_iam_user.carol_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "carol_tanaka2064" {
  name = "fenlum-1bmogc-carol.tanaka2064"
}

resource "aws_iam_user_login_profile" "carol_tanaka2064" {
  user                    = aws_iam_user.carol_tanaka2064.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_tanaka2064__treasury_6_analysts" {
  user   = aws_iam_user.carol_tanaka2064.name
  groups = [aws_iam_group.treasury_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "carol_tanaka2064__base_readonly" {
  user       = aws_iam_user.carol_tanaka2064.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "chen_cohen" {
  name = "fenlum-1bmogc-chen.cohen"
}

resource "aws_iam_user_login_profile" "chen_cohen" {
  user                    = aws_iam_user.chen_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_cohen__platform_2_devs" {
  user   = aws_iam_user.chen_cohen.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user" "chen_cohen2220" {
  name = "fenlum-1bmogc-chen.cohen2220"
}

resource "aws_iam_user_login_profile" "chen_cohen2220" {
  user                    = aws_iam_user.chen_cohen2220.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_cohen2220__data_eng_2_analysts" {
  user   = aws_iam_user.chen_cohen2220.name
  groups = [aws_iam_group.data_eng_2_analysts.name]
}

resource "aws_iam_user" "chen_davis" {
  name = "fenlum-1bmogc-chen.davis"
}

resource "aws_iam_user_group_membership" "chen_davis__payments_7_devs" {
  user   = aws_iam_user.chen_davis.name
  groups = [aws_iam_group.payments_7_devs.name]
}

resource "aws_iam_user" "chen_davis4747" {
  name = "fenlum-1bmogc-chen.davis4747"
}

resource "aws_iam_user_login_profile" "chen_davis4747" {
  user                    = aws_iam_user.chen_davis4747.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_davis4747__mobile_2_devs" {
  user   = aws_iam_user.chen_davis4747.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "chen_davis4747__base_readonly" {
  user       = aws_iam_user.chen_davis4747.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "chen_gupta" {
  name = "fenlum-1bmogc-chen.gupta"
}

resource "aws_iam_user_group_membership" "chen_gupta__risk_3_devs" {
  user   = aws_iam_user.chen_gupta.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user" "chen_khan" {
  name = "fenlum-1bmogc-chen.khan"
}

resource "aws_iam_user_login_profile" "chen_khan" {
  user                    = aws_iam_user.chen_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_khan__lending_2_devs" {
  user   = aws_iam_user.chen_khan.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user" "chen_khan7420" {
  name = "fenlum-1bmogc-chen.khan7420"
}

resource "aws_iam_user_login_profile" "chen_khan7420" {
  user                    = aws_iam_user.chen_khan7420.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_khan7420__ledger_3_devs" {
  user   = aws_iam_user.chen_khan7420.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user" "chen_larsen" {
  name = "fenlum-1bmogc-chen.larsen"
}

resource "aws_iam_user_group_membership" "chen_larsen__platform_3_devs" {
  user   = aws_iam_user.chen_larsen.name
  groups = [aws_iam_group.platform_3_devs.name]
}

resource "aws_iam_user_group_membership" "chen_larsen__kyc_2_analysts" {
  user   = aws_iam_user.chen_larsen.name
  groups = [aws_iam_group.kyc_2_analysts.name]
}

resource "aws_iam_user" "chen_larsen5605" {
  name = "fenlum-1bmogc-chen.larsen5605"
}

resource "aws_iam_user_group_membership" "chen_larsen5605__risk_5_devs" {
  user   = aws_iam_user.chen_larsen5605.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user" "chen_mehta" {
  name = "fenlum-1bmogc-chen.mehta"
}

resource "aws_iam_user_group_membership" "chen_mehta__reporting_4_analysts" {
  user   = aws_iam_user.chen_mehta.name
  groups = [aws_iam_group.reporting_4_analysts.name]
}

resource "aws_iam_user" "chen_mehta1478" {
  name = "fenlum-1bmogc-chen.mehta1478"
}

resource "aws_iam_user_login_profile" "chen_mehta1478" {
  user                    = aws_iam_user.chen_mehta1478.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_mehta1478__platform_2_devs" {
  user   = aws_iam_user.chen_mehta1478.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user" "chen_mehta4629" {
  name = "fenlum-1bmogc-chen.mehta4629"
}

resource "aws_iam_user_login_profile" "chen_mehta4629" {
  user                    = aws_iam_user.chen_mehta4629.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_mehta4629__mobile_6_devs" {
  user   = aws_iam_user.chen_mehta4629.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user" "chen_miller" {
  name = "fenlum-1bmogc-chen.miller"
}

resource "aws_iam_user_login_profile" "chen_miller" {
  user                    = aws_iam_user.chen_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_miller__fraud_6_devs" {
  user   = aws_iam_user.chen_miller.name
  groups = [aws_iam_group.fraud_6_devs.name]
}

resource "aws_iam_user" "chen_nguyen" {
  name = "fenlum-1bmogc-chen.nguyen"
}

resource "aws_iam_user_login_profile" "chen_nguyen" {
  user                    = aws_iam_user.chen_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_nguyen__treasury_3_devs" {
  user   = aws_iam_user.chen_nguyen.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user" "chen_reddy" {
  name = "fenlum-1bmogc-chen.reddy"
}

resource "aws_iam_user_group_membership" "chen_reddy__mobile_3_devs" {
  user   = aws_iam_user.chen_reddy.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user_group_membership" "chen_reddy__payments_6_analysts" {
  user   = aws_iam_user.chen_reddy.name
  groups = [aws_iam_group.payments_6_analysts.name]
}

resource "aws_iam_user" "chen_reddy6864" {
  name = "fenlum-1bmogc-chen.reddy6864"
}

resource "aws_iam_user_group_membership" "chen_reddy6864__data_eng_2_analysts" {
  user   = aws_iam_user.chen_reddy6864.name
  groups = [aws_iam_group.data_eng_2_analysts.name]
}

resource "aws_iam_user" "chen_reddy7125" {
  name = "fenlum-1bmogc-chen.reddy7125"
}

resource "aws_iam_user_login_profile" "chen_reddy7125" {
  user                    = aws_iam_user.chen_reddy7125.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_reddy7125__platform_6_devs" {
  user   = aws_iam_user.chen_reddy7125.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "chen_sato" {
  name = "fenlum-1bmogc-chen.sato"
}

resource "aws_iam_user_login_profile" "chen_sato" {
  user                    = aws_iam_user.chen_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_sato__ledger_3_analysts" {
  user   = aws_iam_user.chen_sato.name
  groups = [aws_iam_group.ledger_3_analysts.name]
}

resource "aws_iam_user" "chen_sato2062" {
  name = "fenlum-1bmogc-chen.sato2062"
}

resource "aws_iam_user_login_profile" "chen_sato2062" {
  user                    = aws_iam_user.chen_sato2062.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_sato2062__ledger_analysts" {
  user   = aws_iam_user.chen_sato2062.name
  groups = [aws_iam_group.ledger_analysts.name]
}

resource "aws_iam_user" "chen_singh" {
  name = "fenlum-1bmogc-chen.singh"
}

resource "aws_iam_user_group_membership" "chen_singh__ledger_2_devs" {
  user   = aws_iam_user.chen_singh.name
  groups = [aws_iam_group.ledger_2_devs.name]
}

resource "aws_iam_user_group_membership" "chen_singh__data_eng_5_analysts" {
  user   = aws_iam_user.chen_singh.name
  groups = [aws_iam_group.data_eng_5_analysts.name]
}

resource "aws_iam_user" "chen_tanaka" {
  name = "fenlum-1bmogc-chen.tanaka"
}

resource "aws_iam_user_login_profile" "chen_tanaka" {
  user                    = aws_iam_user.chen_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_tanaka__lending_devs" {
  user   = aws_iam_user.chen_tanaka.name
  groups = [aws_iam_group.lending_devs.name]
}

resource "aws_iam_user" "chen_wong" {
  name = "fenlum-1bmogc-chen.wong"
}

resource "aws_iam_user_login_profile" "chen_wong" {
  user                    = aws_iam_user.chen_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "chen_wong__risk_5_analysts" {
  user   = aws_iam_user.chen_wong.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user" "dara_ali" {
  name = "fenlum-1bmogc-dara.ali"
}

resource "aws_iam_user_login_profile" "dara_ali" {
  user                    = aws_iam_user.dara_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_ali__reporting_3_devs" {
  user   = aws_iam_user.dara_ali.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user" "dara_ali1090" {
  name = "fenlum-1bmogc-dara.ali1090"
}

resource "aws_iam_user_login_profile" "dara_ali1090" {
  user                    = aws_iam_user.dara_ali1090.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_ali1090__treasury_devs" {
  user   = aws_iam_user.dara_ali1090.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "dara_brown" {
  name = "fenlum-1bmogc-dara.brown"
}

resource "aws_iam_user_login_profile" "dara_brown" {
  user                    = aws_iam_user.dara_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_brown__reporting_2_devs" {
  user   = aws_iam_user.dara_brown.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "dara_brown3292" {
  name = "fenlum-1bmogc-dara.brown3292"
}

resource "aws_iam_user_login_profile" "dara_brown3292" {
  user                    = aws_iam_user.dara_brown3292.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_brown3292__mobile_2_devs" {
  user   = aws_iam_user.dara_brown3292.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_group_membership" "dara_brown3292__lending_2_analysts" {
  user   = aws_iam_user.dara_brown3292.name
  groups = [aws_iam_group.lending_2_analysts.name]
}

resource "aws_iam_user" "dara_brown6199" {
  name = "fenlum-1bmogc-dara.brown6199"
}

resource "aws_iam_user_login_profile" "dara_brown6199" {
  user                    = aws_iam_user.dara_brown6199.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_brown6199__ledger_3_devs" {
  user   = aws_iam_user.dara_brown6199.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user_group_membership" "dara_brown6199__trading_2_analysts" {
  user   = aws_iam_user.dara_brown6199.name
  groups = [aws_iam_group.trading_2_analysts.name]
}

resource "aws_iam_user" "dara_cohen" {
  name = "fenlum-1bmogc-dara.cohen"
}

resource "aws_iam_user_login_profile" "dara_cohen" {
  user                    = aws_iam_user.dara_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_cohen__mobile_4_analysts" {
  user   = aws_iam_user.dara_cohen.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user_group_membership" "dara_cohen__payments_5_analysts" {
  user   = aws_iam_user.dara_cohen.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user" "dara_cohen9188" {
  name = "fenlum-1bmogc-dara.cohen9188"
}

resource "aws_iam_user_login_profile" "dara_cohen9188" {
  user                    = aws_iam_user.dara_cohen9188.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_cohen9188__trading_5_devs" {
  user   = aws_iam_user.dara_cohen9188.name
  groups = [aws_iam_group.trading_5_devs.name]
}

resource "aws_iam_user" "dara_davis" {
  name = "fenlum-1bmogc-dara.davis"
}

resource "aws_iam_user_group_membership" "dara_davis__mobile_devs" {
  user   = aws_iam_user.dara_davis.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "dara_garcia" {
  name = "fenlum-1bmogc-dara.garcia"
}

resource "aws_iam_user_login_profile" "dara_garcia" {
  user                    = aws_iam_user.dara_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_garcia__reporting_3_devs" {
  user   = aws_iam_user.dara_garcia.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user_group_membership" "dara_garcia__kyc_5_analysts" {
  user   = aws_iam_user.dara_garcia.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "dara_gupta" {
  name = "fenlum-1bmogc-dara.gupta"
}

resource "aws_iam_user_login_profile" "dara_gupta" {
  user                    = aws_iam_user.dara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_gupta__reporting_4_analysts" {
  user   = aws_iam_user.dara_gupta.name
  groups = [aws_iam_group.reporting_4_analysts.name]
}

resource "aws_iam_user" "dara_haddad" {
  name = "fenlum-1bmogc-dara.haddad"
}

resource "aws_iam_user_group_membership" "dara_haddad__risk_2_devs" {
  user   = aws_iam_user.dara_haddad.name
  groups = [aws_iam_group.risk_2_devs.name]
}

resource "aws_iam_user" "dara_ivanov" {
  name = "fenlum-1bmogc-dara.ivanov"
}

resource "aws_iam_user_group_membership" "dara_ivanov__treasury_4_devs" {
  user   = aws_iam_user.dara_ivanov.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user" "dara_ivanov2236" {
  name = "fenlum-1bmogc-dara.ivanov2236"
}

resource "aws_iam_user_login_profile" "dara_ivanov2236" {
  user                    = aws_iam_user.dara_ivanov2236.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_ivanov2236__treasury_5_devs" {
  user   = aws_iam_user.dara_ivanov2236.name
  groups = [aws_iam_group.treasury_5_devs.name]
}

resource "aws_iam_user_group_membership" "dara_ivanov2236__platform_3_analysts" {
  user   = aws_iam_user.dara_ivanov2236.name
  groups = [aws_iam_group.platform_3_analysts.name]
}

resource "aws_iam_user" "dara_jones" {
  name = "fenlum-1bmogc-dara.jones"
}

resource "aws_iam_user_login_profile" "dara_jones" {
  user                    = aws_iam_user.dara_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_jones__risk_analysts" {
  user   = aws_iam_user.dara_jones.name
  groups = [aws_iam_group.risk_analysts.name]
}

resource "aws_iam_user_policy_attachment" "dara_jones__base_readonly" {
  user       = aws_iam_user.dara_jones.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_khan" {
  name = "fenlum-1bmogc-dara.khan"
}

resource "aws_iam_user_login_profile" "dara_khan" {
  user                    = aws_iam_user.dara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_khan__fraud_3_devs" {
  user   = aws_iam_user.dara_khan.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user_group_membership" "dara_khan__lending_4_analysts" {
  user   = aws_iam_user.dara_khan.name
  groups = [aws_iam_group.lending_4_analysts.name]
}

resource "aws_iam_user" "dara_khan6308" {
  name = "fenlum-1bmogc-dara.khan6308"
}

resource "aws_iam_user_login_profile" "dara_khan6308" {
  user                    = aws_iam_user.dara_khan6308.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_khan6308__data_eng_devs" {
  user   = aws_iam_user.dara_khan6308.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user" "dara_kim" {
  name = "fenlum-1bmogc-dara.kim"
}

resource "aws_iam_user_group_membership" "dara_kim__data_eng_devs" {
  user   = aws_iam_user.dara_kim.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user_group_membership" "dara_kim__kyc_7_analysts" {
  user   = aws_iam_user.dara_kim.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user" "dara_kim9917" {
  name = "fenlum-1bmogc-dara.kim9917"
}

resource "aws_iam_user_login_profile" "dara_kim9917" {
  user                    = aws_iam_user.dara_kim9917.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_kim9917__treasury_7_devs" {
  user   = aws_iam_user.dara_kim9917.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "dara_kim9917__base_readonly" {
  user       = aws_iam_user.dara_kim9917.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_mehta" {
  name = "fenlum-1bmogc-dara.mehta"
}

resource "aws_iam_user_login_profile" "dara_mehta" {
  user                    = aws_iam_user.dara_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_mehta__platform_3_devs" {
  user   = aws_iam_user.dara_mehta.name
  groups = [aws_iam_group.platform_3_devs.name]
}

resource "aws_iam_user" "dara_mehta242" {
  name = "fenlum-1bmogc-dara.mehta242"
}

resource "aws_iam_user_group_membership" "dara_mehta242__fraud_7_devs" {
  user   = aws_iam_user.dara_mehta242.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user" "dara_miller" {
  name = "fenlum-1bmogc-dara.miller"
}

resource "aws_iam_user_login_profile" "dara_miller" {
  user                    = aws_iam_user.dara_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_miller__fraud_7_devs" {
  user   = aws_iam_user.dara_miller.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "dara_miller__base_readonly" {
  user       = aws_iam_user.dara_miller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_muller" {
  name = "fenlum-1bmogc-dara.muller"
}

resource "aws_iam_user_group_membership" "dara_muller__treasury_devs" {
  user   = aws_iam_user.dara_muller.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user_group_membership" "dara_muller__payments_4_analysts" {
  user   = aws_iam_user.dara_muller.name
  groups = [aws_iam_group.payments_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "dara_muller__base_readonly" {
  user       = aws_iam_user.dara_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dara_nguyen" {
  name = "fenlum-1bmogc-dara.nguyen"
}

resource "aws_iam_user_login_profile" "dara_nguyen" {
  user                    = aws_iam_user.dara_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_nguyen__trading_5_devs" {
  user   = aws_iam_user.dara_nguyen.name
  groups = [aws_iam_group.trading_5_devs.name]
}

resource "aws_iam_user" "dara_novak" {
  name = "fenlum-1bmogc-dara.novak"
}

resource "aws_iam_user_login_profile" "dara_novak" {
  user                    = aws_iam_user.dara_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_novak__reporting_3_devs" {
  user   = aws_iam_user.dara_novak.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user_group_membership" "dara_novak__fraud_6_analysts" {
  user   = aws_iam_user.dara_novak.name
  groups = [aws_iam_group.fraud_6_analysts.name]
}

resource "aws_iam_user" "dara_okafor" {
  name = "fenlum-1bmogc-dara.okafor"
}

resource "aws_iam_user_login_profile" "dara_okafor" {
  user                    = aws_iam_user.dara_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_okafor__ledger_5_devs" {
  user   = aws_iam_user.dara_okafor.name
  groups = [aws_iam_group.ledger_5_devs.name]
}

resource "aws_iam_user_group_membership" "dara_okafor__mobile_3_analysts" {
  user   = aws_iam_user.dara_okafor.name
  groups = [aws_iam_group.mobile_3_analysts.name]
}

resource "aws_iam_user" "dara_sato" {
  name = "fenlum-1bmogc-dara.sato"
}

resource "aws_iam_user_login_profile" "dara_sato" {
  user                    = aws_iam_user.dara_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_sato__mobile_devs" {
  user   = aws_iam_user.dara_sato.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_group_membership" "dara_sato__payments_4_analysts" {
  user   = aws_iam_user.dara_sato.name
  groups = [aws_iam_group.payments_4_analysts.name]
}

resource "aws_iam_user" "dara_singh" {
  name = "fenlum-1bmogc-dara.singh"
}

resource "aws_iam_user_login_profile" "dara_singh" {
  user                    = aws_iam_user.dara_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dara_singh__reporting_3_devs" {
  user   = aws_iam_user.dara_singh.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user" "dave_chen" {
  name = "fenlum-1bmogc-dave.chen"
}

resource "aws_iam_user_login_profile" "dave_chen" {
  user                    = aws_iam_user.dave_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_chen__mobile_3_devs" {
  user   = aws_iam_user.dave_chen.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "dave_chen1287" {
  name = "fenlum-1bmogc-dave.chen1287"
}

resource "aws_iam_user_login_profile" "dave_chen1287" {
  user                    = aws_iam_user.dave_chen1287.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_chen1287__lending_devs" {
  user   = aws_iam_user.dave_chen1287.name
  groups = [aws_iam_group.lending_devs.name]
}

resource "aws_iam_user" "dave_cohen" {
  name = "fenlum-1bmogc-dave.cohen"
}

resource "aws_iam_user_login_profile" "dave_cohen" {
  user                    = aws_iam_user.dave_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_cohen__payments_4_analysts" {
  user   = aws_iam_user.dave_cohen.name
  groups = [aws_iam_group.payments_4_analysts.name]
}

resource "aws_iam_user" "dave_gupta" {
  name = "fenlum-1bmogc-dave.gupta"
}

resource "aws_iam_user_login_profile" "dave_gupta" {
  user                    = aws_iam_user.dave_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_gupta__data_eng_4_devs" {
  user   = aws_iam_user.dave_gupta.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user" "dave_haddad" {
  name = "fenlum-1bmogc-dave.haddad"
}

resource "aws_iam_user_login_profile" "dave_haddad" {
  user                    = aws_iam_user.dave_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_haddad__platform_6_devs" {
  user   = aws_iam_user.dave_haddad.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "dave_jones" {
  name = "fenlum-1bmogc-dave.jones"
}

resource "aws_iam_user_login_profile" "dave_jones" {
  user                    = aws_iam_user.dave_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_jones__fraud_6_devs" {
  user   = aws_iam_user.dave_jones.name
  groups = [aws_iam_group.fraud_6_devs.name]
}

resource "aws_iam_user" "dave_larsen" {
  name = "fenlum-1bmogc-dave.larsen"
}

resource "aws_iam_user_login_profile" "dave_larsen" {
  user                    = aws_iam_user.dave_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_larsen__treasury_6_devs" {
  user   = aws_iam_user.dave_larsen.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user_group_membership" "dave_larsen__payments_2_analysts" {
  user   = aws_iam_user.dave_larsen.name
  groups = [aws_iam_group.payments_2_analysts.name]
}

resource "aws_iam_user" "dave_larsen5590" {
  name = "fenlum-1bmogc-dave.larsen5590"
}

resource "aws_iam_user_login_profile" "dave_larsen5590" {
  user                    = aws_iam_user.dave_larsen5590.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_larsen5590__treasury_6_devs" {
  user   = aws_iam_user.dave_larsen5590.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user" "dave_larsen6700" {
  name = "fenlum-1bmogc-dave.larsen6700"
}

resource "aws_iam_user_login_profile" "dave_larsen6700" {
  user                    = aws_iam_user.dave_larsen6700.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_larsen6700__fraud_7_devs" {
  user   = aws_iam_user.dave_larsen6700.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user" "dave_lopez" {
  name = "fenlum-1bmogc-dave.lopez"
}

resource "aws_iam_user_login_profile" "dave_lopez" {
  user                    = aws_iam_user.dave_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_lopez__risk_5_devs" {
  user   = aws_iam_user.dave_lopez.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user" "dave_miller" {
  name = "fenlum-1bmogc-dave.miller"
}

resource "aws_iam_user_group_membership" "dave_miller__payments_devs" {
  user   = aws_iam_user.dave_miller.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user_policy_attachment" "dave_miller__base_readonly" {
  user       = aws_iam_user.dave_miller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dave_muller" {
  name = "fenlum-1bmogc-dave.muller"
}

resource "aws_iam_user_group_membership" "dave_muller__mobile_4_devs" {
  user   = aws_iam_user.dave_muller.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "dave_muller6804" {
  name = "fenlum-1bmogc-dave.muller6804"
}

resource "aws_iam_user_login_profile" "dave_muller6804" {
  user                    = aws_iam_user.dave_muller6804.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_muller6804__trading_6_devs" {
  user   = aws_iam_user.dave_muller6804.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user" "dave_nguyen" {
  name = "fenlum-1bmogc-dave.nguyen"
}

resource "aws_iam_user_login_profile" "dave_nguyen" {
  user                    = aws_iam_user.dave_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_nguyen__reporting_3_devs" {
  user   = aws_iam_user.dave_nguyen.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user_group_membership" "dave_nguyen__data_eng_3_analysts" {
  user   = aws_iam_user.dave_nguyen.name
  groups = [aws_iam_group.data_eng_3_analysts.name]
}

resource "aws_iam_user" "dave_novak" {
  name = "fenlum-1bmogc-dave.novak"
}

resource "aws_iam_user_login_profile" "dave_novak" {
  user                    = aws_iam_user.dave_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_novak__reporting_6_analysts" {
  user   = aws_iam_user.dave_novak.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user_group_membership" "dave_novak__fraud_2_analysts" {
  user   = aws_iam_user.dave_novak.name
  groups = [aws_iam_group.fraud_2_analysts.name]
}

resource "aws_iam_user" "dave_okafor" {
  name = "fenlum-1bmogc-dave.okafor"
}

resource "aws_iam_user_login_profile" "dave_okafor" {
  user                    = aws_iam_user.dave_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_okafor__fraud_5_analysts" {
  user   = aws_iam_user.dave_okafor.name
  groups = [aws_iam_group.fraud_5_analysts.name]
}

resource "aws_iam_user_group_membership" "dave_okafor__kyc_4_analysts" {
  user   = aws_iam_user.dave_okafor.name
  groups = [aws_iam_group.kyc_4_analysts.name]
}

resource "aws_iam_user" "dave_reddy" {
  name = "fenlum-1bmogc-dave.reddy"
}

resource "aws_iam_user_login_profile" "dave_reddy" {
  user                    = aws_iam_user.dave_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_reddy__payments_3_devs" {
  user   = aws_iam_user.dave_reddy.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "dave_reddy6571" {
  name = "fenlum-1bmogc-dave.reddy6571"
}

resource "aws_iam_user_login_profile" "dave_reddy6571" {
  user                    = aws_iam_user.dave_reddy6571.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_reddy6571__payments_devs" {
  user   = aws_iam_user.dave_reddy6571.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user" "dave_reddy7247" {
  name = "fenlum-1bmogc-dave.reddy7247"
}

resource "aws_iam_user_login_profile" "dave_reddy7247" {
  user                    = aws_iam_user.dave_reddy7247.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_reddy7247__reporting_3_devs" {
  user   = aws_iam_user.dave_reddy7247.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user" "dave_sato" {
  name = "fenlum-1bmogc-dave.sato"
}

resource "aws_iam_user_login_profile" "dave_sato" {
  user                    = aws_iam_user.dave_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_sato__mobile_4_analysts" {
  user   = aws_iam_user.dave_sato.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user_group_membership" "dave_sato__mobile_2_analysts" {
  user   = aws_iam_user.dave_sato.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "dave_singh" {
  name = "fenlum-1bmogc-dave.singh"
}

resource "aws_iam_user_login_profile" "dave_singh" {
  user                    = aws_iam_user.dave_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_singh__data_eng_4_devs" {
  user   = aws_iam_user.dave_singh.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user" "dave_singh2925" {
  name = "fenlum-1bmogc-dave.singh2925"
}

resource "aws_iam_user_login_profile" "dave_singh2925" {
  user                    = aws_iam_user.dave_singh2925.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_singh2925__reporting_3_analysts" {
  user   = aws_iam_user.dave_singh2925.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "dave_smith" {
  name = "fenlum-1bmogc-dave.smith"
}

resource "aws_iam_user_login_profile" "dave_smith" {
  user                    = aws_iam_user.dave_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_smith__kyc_3_analysts" {
  user   = aws_iam_user.dave_smith.name
  groups = [aws_iam_group.kyc_3_analysts.name]
}

resource "aws_iam_user_group_membership" "dave_smith__trading_7_analysts" {
  user   = aws_iam_user.dave_smith.name
  groups = [aws_iam_group.trading_7_analysts.name]
}

resource "aws_iam_user" "dave_tanaka" {
  name = "fenlum-1bmogc-dave.tanaka"
}

resource "aws_iam_user_login_profile" "dave_tanaka" {
  user                    = aws_iam_user.dave_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_tanaka__platform_3_devs" {
  user   = aws_iam_user.dave_tanaka.name
  groups = [aws_iam_group.platform_3_devs.name]
}

resource "aws_iam_user_group_membership" "dave_tanaka__risk_2_analysts" {
  user   = aws_iam_user.dave_tanaka.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user" "dave_wong" {
  name = "fenlum-1bmogc-dave.wong"
}

resource "aws_iam_user_group_membership" "dave_wong__reporting_4_analysts" {
  user   = aws_iam_user.dave_wong.name
  groups = [aws_iam_group.reporting_4_analysts.name]
}

resource "aws_iam_user_group_membership" "dave_wong__trading_4_analysts" {
  user   = aws_iam_user.dave_wong.name
  groups = [aws_iam_group.trading_4_analysts.name]
}

resource "aws_iam_user" "eli_ali" {
  name = "fenlum-1bmogc-eli.ali"
}

resource "aws_iam_user_login_profile" "eli_ali" {
  user                    = aws_iam_user.eli_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_ali__mobile_4_devs" {
  user   = aws_iam_user.eli_ali.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "eli_brown" {
  name = "fenlum-1bmogc-eli.brown"
}

resource "aws_iam_user_login_profile" "eli_brown" {
  user                    = aws_iam_user.eli_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_brown__treasury_7_devs" {
  user   = aws_iam_user.eli_brown.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "eli_brown__base_readonly" {
  user       = aws_iam_user.eli_brown.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_cohen" {
  name = "fenlum-1bmogc-eli.cohen"
}

resource "aws_iam_user_login_profile" "eli_cohen" {
  user                    = aws_iam_user.eli_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_cohen__fraud_4_devs" {
  user   = aws_iam_user.eli_cohen.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user" "eli_davis" {
  name = "fenlum-1bmogc-eli.davis"
}

resource "aws_iam_user_login_profile" "eli_davis" {
  user                    = aws_iam_user.eli_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_davis__ledger_5_analysts" {
  user   = aws_iam_user.eli_davis.name
  groups = [aws_iam_group.ledger_5_analysts.name]
}

resource "aws_iam_user" "eli_davis3541" {
  name = "fenlum-1bmogc-eli.davis3541"
}

resource "aws_iam_user_login_profile" "eli_davis3541" {
  user                    = aws_iam_user.eli_davis3541.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_davis3541__trading_3_devs" {
  user   = aws_iam_user.eli_davis3541.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user" "eli_garcia" {
  name = "fenlum-1bmogc-eli.garcia"
}

resource "aws_iam_user_login_profile" "eli_garcia" {
  user                    = aws_iam_user.eli_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_garcia__lending_6_devs" {
  user   = aws_iam_user.eli_garcia.name
  groups = [aws_iam_group.lending_6_devs.name]
}

resource "aws_iam_user" "eli_garcia8203" {
  name = "fenlum-1bmogc-eli.garcia8203"
}

resource "aws_iam_user_login_profile" "eli_garcia8203" {
  user                    = aws_iam_user.eli_garcia8203.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_garcia8203__risk_4_devs" {
  user   = aws_iam_user.eli_garcia8203.name
  groups = [aws_iam_group.risk_4_devs.name]
}

resource "aws_iam_user_group_membership" "eli_garcia8203__trading_6_analysts" {
  user   = aws_iam_user.eli_garcia8203.name
  groups = [aws_iam_group.trading_6_analysts.name]
}

resource "aws_iam_user" "eli_haddad" {
  name = "fenlum-1bmogc-eli.haddad"
}

resource "aws_iam_user_login_profile" "eli_haddad" {
  user                    = aws_iam_user.eli_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_haddad__fraud_3_devs" {
  user   = aws_iam_user.eli_haddad.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user" "eli_haddad3600" {
  name = "fenlum-1bmogc-eli.haddad3600"
}

resource "aws_iam_user_login_profile" "eli_haddad3600" {
  user                    = aws_iam_user.eli_haddad3600.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_haddad3600__risk_6_devs" {
  user   = aws_iam_user.eli_haddad3600.name
  groups = [aws_iam_group.risk_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "eli_haddad3600__base_readonly" {
  user       = aws_iam_user.eli_haddad3600.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_ivanov" {
  name = "fenlum-1bmogc-eli.ivanov"
}

resource "aws_iam_user_login_profile" "eli_ivanov" {
  user                    = aws_iam_user.eli_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_ivanov__reporting_6_devs" {
  user   = aws_iam_user.eli_ivanov.name
  groups = [aws_iam_group.reporting_6_devs.name]
}

resource "aws_iam_user" "eli_ivanov5904" {
  name = "fenlum-1bmogc-eli.ivanov5904"
}

resource "aws_iam_user_login_profile" "eli_ivanov5904" {
  user                    = aws_iam_user.eli_ivanov5904.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_ivanov5904__fraud_4_devs" {
  user   = aws_iam_user.eli_ivanov5904.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user" "eli_ivanov8496" {
  name = "fenlum-1bmogc-eli.ivanov8496"
}

resource "aws_iam_user_login_profile" "eli_ivanov8496" {
  user                    = aws_iam_user.eli_ivanov8496.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_ivanov8496__lending_3_analysts" {
  user   = aws_iam_user.eli_ivanov8496.name
  groups = [aws_iam_group.lending_3_analysts.name]
}

resource "aws_iam_user" "eli_jones" {
  name = "fenlum-1bmogc-eli.jones"
}

resource "aws_iam_user_login_profile" "eli_jones" {
  user                    = aws_iam_user.eli_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_jones__data_eng_6_devs" {
  user   = aws_iam_user.eli_jones.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "eli_jones__base_readonly" {
  user       = aws_iam_user.eli_jones.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_khan" {
  name = "fenlum-1bmogc-eli.khan"
}

resource "aws_iam_user_login_profile" "eli_khan" {
  user                    = aws_iam_user.eli_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_khan__trading_3_devs" {
  user   = aws_iam_user.eli_khan.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "eli_khan__base_readonly" {
  user       = aws_iam_user.eli_khan.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_kim" {
  name = "fenlum-1bmogc-eli.kim"
}

resource "aws_iam_user_login_profile" "eli_kim" {
  user                    = aws_iam_user.eli_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_kim__mobile_2_devs" {
  user   = aws_iam_user.eli_kim.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "eli_kim__base_readonly" {
  user       = aws_iam_user.eli_kim.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_larsen" {
  name = "fenlum-1bmogc-eli.larsen"
}

resource "aws_iam_user_login_profile" "eli_larsen" {
  user                    = aws_iam_user.eli_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_larsen__payments_2_analysts" {
  user   = aws_iam_user.eli_larsen.name
  groups = [aws_iam_group.payments_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "eli_larsen__base_readonly" {
  user       = aws_iam_user.eli_larsen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_lopez" {
  name = "fenlum-1bmogc-eli.lopez"
}

resource "aws_iam_user_login_profile" "eli_lopez" {
  user                    = aws_iam_user.eli_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_lopez__platform_6_devs" {
  user   = aws_iam_user.eli_lopez.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "eli_mehta" {
  name = "fenlum-1bmogc-eli.mehta"
}

resource "aws_iam_user_login_profile" "eli_mehta" {
  user                    = aws_iam_user.eli_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_mehta__kyc_7_devs" {
  user   = aws_iam_user.eli_mehta.name
  groups = [aws_iam_group.kyc_7_devs.name]
}

resource "aws_iam_user" "eli_novak" {
  name = "fenlum-1bmogc-eli.novak"
}

resource "aws_iam_user_login_profile" "eli_novak" {
  user                    = aws_iam_user.eli_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_novak__trading_3_devs" {
  user   = aws_iam_user.eli_novak.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "eli_novak__base_readonly" {
  user       = aws_iam_user.eli_novak.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_okafor" {
  name = "fenlum-1bmogc-eli.okafor"
}

resource "aws_iam_user_login_profile" "eli_okafor" {
  user                    = aws_iam_user.eli_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_okafor__lending_5_devs" {
  user   = aws_iam_user.eli_okafor.name
  groups = [aws_iam_group.lending_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "eli_okafor__base_readonly" {
  user       = aws_iam_user.eli_okafor.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_sato" {
  name = "fenlum-1bmogc-eli.sato"
}

resource "aws_iam_user_group_membership" "eli_sato__kyc_2_devs" {
  user   = aws_iam_user.eli_sato.name
  groups = [aws_iam_group.kyc_2_devs.name]
}

resource "aws_iam_user" "eli_silva" {
  name = "fenlum-1bmogc-eli.silva"
}

resource "aws_iam_user_login_profile" "eli_silva" {
  user                    = aws_iam_user.eli_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_silva__lending_5_devs" {
  user   = aws_iam_user.eli_silva.name
  groups = [aws_iam_group.lending_5_devs.name]
}

resource "aws_iam_user" "eli_singh" {
  name = "fenlum-1bmogc-eli.singh"
}

resource "aws_iam_user_group_membership" "eli_singh__payments_6_devs" {
  user   = aws_iam_user.eli_singh.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "eli_singh__base_readonly" {
  user       = aws_iam_user.eli_singh.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "eli_singh339" {
  name = "fenlum-1bmogc-eli.singh339"
}

resource "aws_iam_user_login_profile" "eli_singh339" {
  user                    = aws_iam_user.eli_singh339.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_singh339__mobile_4_analysts" {
  user   = aws_iam_user.eli_singh339.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "eli_tanaka" {
  name = "fenlum-1bmogc-eli.tanaka"
}

resource "aws_iam_user_login_profile" "eli_tanaka" {
  user                    = aws_iam_user.eli_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_tanaka__fraud_5_devs" {
  user   = aws_iam_user.eli_tanaka.name
  groups = [aws_iam_group.fraud_5_devs.name]
}

resource "aws_iam_user_group_membership" "eli_tanaka__kyc_analysts" {
  user   = aws_iam_user.eli_tanaka.name
  groups = [aws_iam_group.kyc_analysts.name]
}

resource "aws_iam_user" "eli_wong" {
  name = "fenlum-1bmogc-eli.wong"
}

resource "aws_iam_user_login_profile" "eli_wong" {
  user                    = aws_iam_user.eli_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_wong__mobile_6_devs" {
  user   = aws_iam_user.eli_wong.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user" "erin_ali" {
  name = "fenlum-1bmogc-erin.ali"
}

resource "aws_iam_user_login_profile" "erin_ali" {
  user                    = aws_iam_user.erin_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_ali__fraud_7_analysts" {
  user   = aws_iam_user.erin_ali.name
  groups = [aws_iam_group.fraud_7_analysts.name]
}

resource "aws_iam_user" "erin_chen" {
  name = "fenlum-1bmogc-erin.chen"
}

resource "aws_iam_user_group_membership" "erin_chen__data_eng_analysts" {
  user   = aws_iam_user.erin_chen.name
  groups = [aws_iam_group.data_eng_analysts.name]
}

resource "aws_iam_user_policy_attachment" "erin_chen__base_readonly" {
  user       = aws_iam_user.erin_chen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "erin_chen8542" {
  name = "fenlum-1bmogc-erin.chen8542"
}

resource "aws_iam_user_login_profile" "erin_chen8542" {
  user                    = aws_iam_user.erin_chen8542.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_chen8542__data_eng_5_devs" {
  user   = aws_iam_user.erin_chen8542.name
  groups = [aws_iam_group.data_eng_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "erin_chen8542__base_readonly" {
  user       = aws_iam_user.erin_chen8542.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "erin_cohen" {
  name = "fenlum-1bmogc-erin.cohen"
}

resource "aws_iam_user_login_profile" "erin_cohen" {
  user                    = aws_iam_user.erin_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_cohen__treasury_5_devs" {
  user   = aws_iam_user.erin_cohen.name
  groups = [aws_iam_group.treasury_5_devs.name]
}

resource "aws_iam_user_group_membership" "erin_cohen__treasury_5_analysts" {
  user   = aws_iam_user.erin_cohen.name
  groups = [aws_iam_group.treasury_5_analysts.name]
}

resource "aws_iam_user" "erin_dubois" {
  name = "fenlum-1bmogc-erin.dubois"
}

resource "aws_iam_user_login_profile" "erin_dubois" {
  user                    = aws_iam_user.erin_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_dubois__platform_4_devs" {
  user   = aws_iam_user.erin_dubois.name
  groups = [aws_iam_group.platform_4_devs.name]
}

resource "aws_iam_user" "erin_haddad" {
  name = "fenlum-1bmogc-erin.haddad"
}

resource "aws_iam_user_login_profile" "erin_haddad" {
  user                    = aws_iam_user.erin_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_haddad__data_eng_4_devs" {
  user   = aws_iam_user.erin_haddad.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user_group_membership" "erin_haddad__risk_7_analysts" {
  user   = aws_iam_user.erin_haddad.name
  groups = [aws_iam_group.risk_7_analysts.name]
}

resource "aws_iam_user" "erin_haddad2919" {
  name = "fenlum-1bmogc-erin.haddad2919"
}

resource "aws_iam_user_login_profile" "erin_haddad2919" {
  user                    = aws_iam_user.erin_haddad2919.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_haddad2919__payments_6_devs" {
  user   = aws_iam_user.erin_haddad2919.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "erin_khan" {
  name = "fenlum-1bmogc-erin.khan"
}

resource "aws_iam_user_login_profile" "erin_khan" {
  user                    = aws_iam_user.erin_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_khan__ledger_devs" {
  user   = aws_iam_user.erin_khan.name
  groups = [aws_iam_group.ledger_devs.name]
}

resource "aws_iam_user" "erin_khan3459" {
  name = "fenlum-1bmogc-erin.khan3459"
}

resource "aws_iam_user_login_profile" "erin_khan3459" {
  user                    = aws_iam_user.erin_khan3459.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_khan3459__ledger_5_devs" {
  user   = aws_iam_user.erin_khan3459.name
  groups = [aws_iam_group.ledger_5_devs.name]
}

resource "aws_iam_user" "erin_lopez" {
  name = "fenlum-1bmogc-erin.lopez"
}

resource "aws_iam_user_login_profile" "erin_lopez" {
  user                    = aws_iam_user.erin_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_lopez__kyc_5_devs" {
  user   = aws_iam_user.erin_lopez.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "erin_mehta" {
  name = "fenlum-1bmogc-erin.mehta"
}

resource "aws_iam_user_login_profile" "erin_mehta" {
  user                    = aws_iam_user.erin_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_mehta__treasury_7_devs" {
  user   = aws_iam_user.erin_mehta.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "erin_nguyen" {
  name = "fenlum-1bmogc-erin.nguyen"
}

resource "aws_iam_user_login_profile" "erin_nguyen" {
  user                    = aws_iam_user.erin_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_nguyen__trading_4_devs" {
  user   = aws_iam_user.erin_nguyen.name
  groups = [aws_iam_group.trading_4_devs.name]
}

resource "aws_iam_user" "erin_rossi" {
  name = "fenlum-1bmogc-erin.rossi"
}

resource "aws_iam_user_login_profile" "erin_rossi" {
  user                    = aws_iam_user.erin_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_rossi__fraud_3_devs" {
  user   = aws_iam_user.erin_rossi.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user" "erin_tanaka" {
  name = "fenlum-1bmogc-erin.tanaka"
}

resource "aws_iam_user_login_profile" "erin_tanaka" {
  user                    = aws_iam_user.erin_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_tanaka__payments_3_devs" {
  user   = aws_iam_user.erin_tanaka.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user_group_membership" "erin_tanaka__mobile_6_analysts" {
  user   = aws_iam_user.erin_tanaka.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "erin_tanaka__base_readonly" {
  user       = aws_iam_user.erin_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "erin_wong" {
  name = "fenlum-1bmogc-erin.wong"
}

resource "aws_iam_user_login_profile" "erin_wong" {
  user                    = aws_iam_user.erin_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_wong__treasury_3_analysts" {
  user   = aws_iam_user.erin_wong.name
  groups = [aws_iam_group.treasury_3_analysts.name]
}

resource "aws_iam_user" "ext_alice_brown" {
  name = "fenlum-1bmogc-ext-alice.brown"
}

resource "aws_iam_user_login_profile" "ext_alice_brown" {
  user                    = aws_iam_user.ext_alice_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_alice_brown__contractors" {
  user   = aws_iam_user.ext_alice_brown.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_alice_khan" {
  name = "fenlum-1bmogc-ext-alice.khan"
}

resource "aws_iam_user_login_profile" "ext_alice_khan" {
  user                    = aws_iam_user.ext_alice_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_alice_khan__contractors" {
  user   = aws_iam_user.ext_alice_khan.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_alice_kim" {
  name = "fenlum-1bmogc-ext-alice.kim"
}

resource "aws_iam_user_login_profile" "ext_alice_kim" {
  user                    = aws_iam_user.ext_alice_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_alice_kim__contractors" {
  user   = aws_iam_user.ext_alice_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_alice_okafor" {
  name = "fenlum-1bmogc-ext-alice.okafor"
}

resource "aws_iam_user_login_profile" "ext_alice_okafor" {
  user                    = aws_iam_user.ext_alice_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_alice_okafor__contractors" {
  user   = aws_iam_user.ext_alice_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_amit_ivanov" {
  name = "fenlum-1bmogc-ext-amit.ivanov"
}

resource "aws_iam_user_login_profile" "ext_amit_ivanov" {
  user                    = aws_iam_user.ext_amit_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_amit_ivanov__contractors" {
  user   = aws_iam_user.ext_amit_ivanov.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_amit_ivanov__ledger_analysts" {
  user   = aws_iam_user.ext_amit_ivanov.name
  groups = [aws_iam_group.ledger_analysts.name]
}

resource "aws_iam_user" "ext_amit_miller" {
  name = "fenlum-1bmogc-ext-amit.miller"
}

resource "aws_iam_user_login_profile" "ext_amit_miller" {
  user                    = aws_iam_user.ext_amit_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_amit_miller__contractors" {
  user   = aws_iam_user.ext_amit_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_amit_miller__mobile_5_analysts" {
  user   = aws_iam_user.ext_amit_miller.name
  groups = [aws_iam_group.mobile_5_analysts.name]
}

resource "aws_iam_user" "ext_bela_novak" {
  name = "fenlum-1bmogc-ext-bela.novak"
}

resource "aws_iam_user_login_profile" "ext_bela_novak" {
  user                    = aws_iam_user.ext_bela_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bela_novak__contractors" {
  user   = aws_iam_user.ext_bela_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_bela_wong" {
  name = "fenlum-1bmogc-ext-bela.wong"
}

resource "aws_iam_user_login_profile" "ext_bela_wong" {
  user                    = aws_iam_user.ext_bela_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bela_wong__contractors" {
  user   = aws_iam_user.ext_bela_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_bela_wong__treasury_6_analysts" {
  user   = aws_iam_user.ext_bela_wong.name
  groups = [aws_iam_group.treasury_6_analysts.name]
}

resource "aws_iam_user" "ext_bob_sato" {
  name = "fenlum-1bmogc-ext-bob.sato"
}

resource "aws_iam_user_login_profile" "ext_bob_sato" {
  user                    = aws_iam_user.ext_bob_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_bob_sato__contractors" {
  user   = aws_iam_user.ext_bob_sato.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_carol_brown" {
  name = "fenlum-1bmogc-ext-carol.brown"
}

resource "aws_iam_user_login_profile" "ext_carol_brown" {
  user                    = aws_iam_user.ext_carol_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_carol_brown__contractors" {
  user   = aws_iam_user.ext_carol_brown.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_carol_brown__treasury_analysts" {
  user   = aws_iam_user.ext_carol_brown.name
  groups = [aws_iam_group.treasury_analysts.name]
}

resource "aws_iam_user" "ext_chen_ali" {
  name = "fenlum-1bmogc-ext-chen.ali"
}

resource "aws_iam_user_login_profile" "ext_chen_ali" {
  user                    = aws_iam_user.ext_chen_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_chen_ali__contractors" {
  user   = aws_iam_user.ext_chen_ali.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_chen_ali__risk_6_analysts" {
  user   = aws_iam_user.ext_chen_ali.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user" "ext_dara_cohen" {
  name = "fenlum-1bmogc-ext-dara.cohen"
}

resource "aws_iam_user_login_profile" "ext_dara_cohen" {
  user                    = aws_iam_user.ext_dara_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dara_cohen__contractors" {
  user   = aws_iam_user.ext_dara_cohen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_dara_gupta" {
  name = "fenlum-1bmogc-ext-dara.gupta"
}

resource "aws_iam_user_login_profile" "ext_dara_gupta" {
  user                    = aws_iam_user.ext_dara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dara_gupta__contractors" {
  user   = aws_iam_user.ext_dara_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_dara_khan" {
  name = "fenlum-1bmogc-ext-dara.khan"
}

resource "aws_iam_user_login_profile" "ext_dara_khan" {
  user                    = aws_iam_user.ext_dara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dara_khan__contractors" {
  user   = aws_iam_user.ext_dara_khan.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_dara_lopez" {
  name = "fenlum-1bmogc-ext-dara.lopez"
}

resource "aws_iam_user_login_profile" "ext_dara_lopez" {
  user                    = aws_iam_user.ext_dara_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dara_lopez__contractors" {
  user   = aws_iam_user.ext_dara_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dara_lopez__data_eng_2_analysts" {
  user   = aws_iam_user.ext_dara_lopez.name
  groups = [aws_iam_group.data_eng_2_analysts.name]
}

resource "aws_iam_user" "ext_dave_davis" {
  name = "fenlum-1bmogc-ext-dave.davis"
}

resource "aws_iam_user_login_profile" "ext_dave_davis" {
  user                    = aws_iam_user.ext_dave_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dave_davis__contractors" {
  user   = aws_iam_user.ext_dave_davis.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dave_davis__kyc_5_analysts" {
  user   = aws_iam_user.ext_dave_davis.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "ext_dave_garcia" {
  name = "fenlum-1bmogc-ext-dave.garcia"
}

resource "aws_iam_user_login_profile" "ext_dave_garcia" {
  user                    = aws_iam_user.ext_dave_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dave_garcia__contractors" {
  user   = aws_iam_user.ext_dave_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dave_garcia__trading_3_analysts" {
  user   = aws_iam_user.ext_dave_garcia.name
  groups = [aws_iam_group.trading_3_analysts.name]
}

resource "aws_iam_user" "ext_dave_kim" {
  name = "fenlum-1bmogc-ext-dave.kim"
}

resource "aws_iam_user_login_profile" "ext_dave_kim" {
  user                    = aws_iam_user.ext_dave_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dave_kim__contractors" {
  user   = aws_iam_user.ext_dave_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dave_kim__mobile_2_analysts" {
  user   = aws_iam_user.ext_dave_kim.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "ext_dave_miller" {
  name = "fenlum-1bmogc-ext-dave.miller"
}

resource "aws_iam_user_login_profile" "ext_dave_miller" {
  user                    = aws_iam_user.ext_dave_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dave_miller__contractors" {
  user   = aws_iam_user.ext_dave_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dave_miller__mobile_4_analysts" {
  user   = aws_iam_user.ext_dave_miller.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "ext_dave_rossi" {
  name = "fenlum-1bmogc-ext-dave.rossi"
}

resource "aws_iam_user_login_profile" "ext_dave_rossi" {
  user                    = aws_iam_user.ext_dave_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dave_rossi__contractors" {
  user   = aws_iam_user.ext_dave_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_dave_wong" {
  name = "fenlum-1bmogc-ext-dave.wong"
}

resource "aws_iam_user_login_profile" "ext_dave_wong" {
  user                    = aws_iam_user.ext_dave_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_dave_wong__contractors" {
  user   = aws_iam_user.ext_dave_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_dave_wong__trading_analysts" {
  user   = aws_iam_user.ext_dave_wong.name
  groups = [aws_iam_group.trading_analysts.name]
}

resource "aws_iam_user" "ext_eli_mehta" {
  name = "fenlum-1bmogc-ext-eli.mehta"
}

resource "aws_iam_user_login_profile" "ext_eli_mehta" {
  user                    = aws_iam_user.ext_eli_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_eli_mehta__contractors" {
  user   = aws_iam_user.ext_eli_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_eli_patel" {
  name = "fenlum-1bmogc-ext-eli.patel"
}

resource "aws_iam_user_login_profile" "ext_eli_patel" {
  user                    = aws_iam_user.ext_eli_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_eli_patel__contractors" {
  user   = aws_iam_user.ext_eli_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_erin_jones" {
  name = "fenlum-1bmogc-ext-erin.jones"
}

resource "aws_iam_user_login_profile" "ext_erin_jones" {
  user                    = aws_iam_user.ext_erin_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_erin_jones__contractors" {
  user   = aws_iam_user.ext_erin_jones.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_erin_jones2955" {
  name = "fenlum-1bmogc-ext-erin.jones2955"
}

resource "aws_iam_user_login_profile" "ext_erin_jones2955" {
  user                    = aws_iam_user.ext_erin_jones2955.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_erin_jones2955__contractors" {
  user   = aws_iam_user.ext_erin_jones2955.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_erin_jones2955__reporting_3_analysts" {
  user   = aws_iam_user.ext_erin_jones2955.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "ext_erin_mehta" {
  name = "fenlum-1bmogc-ext-erin.mehta"
}

resource "aws_iam_user_login_profile" "ext_erin_mehta" {
  user                    = aws_iam_user.ext_erin_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_erin_mehta__contractors" {
  user   = aws_iam_user.ext_erin_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_fay_brown" {
  name = "fenlum-1bmogc-ext-fay.brown"
}

resource "aws_iam_user_login_profile" "ext_fay_brown" {
  user                    = aws_iam_user.ext_fay_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_brown__contractors" {
  user   = aws_iam_user.ext_fay_brown.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_fay_dubois" {
  name = "fenlum-1bmogc-ext-fay.dubois"
}

resource "aws_iam_user_login_profile" "ext_fay_dubois" {
  user                    = aws_iam_user.ext_fay_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_dubois__contractors" {
  user   = aws_iam_user.ext_fay_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_fay_dubois__reporting_6_analysts" {
  user   = aws_iam_user.ext_fay_dubois.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user" "ext_fay_mehta" {
  name = "fenlum-1bmogc-ext-fay.mehta"
}

resource "aws_iam_user_login_profile" "ext_fay_mehta" {
  user                    = aws_iam_user.ext_fay_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_mehta__contractors" {
  user   = aws_iam_user.ext_fay_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_fay_mehta4399" {
  name = "fenlum-1bmogc-ext-fay.mehta4399"
}

resource "aws_iam_user_login_profile" "ext_fay_mehta4399" {
  user                    = aws_iam_user.ext_fay_mehta4399.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_mehta4399__contractors" {
  user   = aws_iam_user.ext_fay_mehta4399.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_fay_mehta4399__kyc_5_analysts" {
  user   = aws_iam_user.ext_fay_mehta4399.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "ext_fay_miller" {
  name = "fenlum-1bmogc-ext-fay.miller"
}

resource "aws_iam_user_login_profile" "ext_fay_miller" {
  user                    = aws_iam_user.ext_fay_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_miller__contractors" {
  user   = aws_iam_user.ext_fay_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_fay_nguyen" {
  name = "fenlum-1bmogc-ext-fay.nguyen"
}

resource "aws_iam_user_login_profile" "ext_fay_nguyen" {
  user                    = aws_iam_user.ext_fay_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_nguyen__contractors" {
  user   = aws_iam_user.ext_fay_nguyen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_fay_nguyen__lending_5_analysts" {
  user   = aws_iam_user.ext_fay_nguyen.name
  groups = [aws_iam_group.lending_5_analysts.name]
}

resource "aws_iam_user" "ext_fay_wong" {
  name = "fenlum-1bmogc-ext-fay.wong"
}

resource "aws_iam_user_login_profile" "ext_fay_wong" {
  user                    = aws_iam_user.ext_fay_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_wong__contractors" {
  user   = aws_iam_user.ext_fay_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_fay_wong__treasury_5_analysts" {
  user   = aws_iam_user.ext_fay_wong.name
  groups = [aws_iam_group.treasury_5_analysts.name]
}

resource "aws_iam_user" "ext_frank_dubois" {
  name = "fenlum-1bmogc-ext-frank.dubois"
}

resource "aws_iam_user_login_profile" "ext_frank_dubois" {
  user                    = aws_iam_user.ext_frank_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_dubois__contractors" {
  user   = aws_iam_user.ext_frank_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_frank_dubois__kyc_7_analysts" {
  user   = aws_iam_user.ext_frank_dubois.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user" "ext_frank_gupta" {
  name = "fenlum-1bmogc-ext-frank.gupta"
}

resource "aws_iam_user_login_profile" "ext_frank_gupta" {
  user                    = aws_iam_user.ext_frank_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_gupta__contractors" {
  user   = aws_iam_user.ext_frank_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_frank_gupta__kyc_7_analysts" {
  user   = aws_iam_user.ext_frank_gupta.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user" "ext_frank_singh" {
  name = "fenlum-1bmogc-ext-frank.singh"
}

resource "aws_iam_user_login_profile" "ext_frank_singh" {
  user                    = aws_iam_user.ext_frank_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_singh__contractors" {
  user   = aws_iam_user.ext_frank_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_frank_smith" {
  name = "fenlum-1bmogc-ext-frank.smith"
}

resource "aws_iam_user_login_profile" "ext_frank_smith" {
  user                    = aws_iam_user.ext_frank_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_frank_smith__contractors" {
  user   = aws_iam_user.ext_frank_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_frank_smith__trading_4_analysts" {
  user   = aws_iam_user.ext_frank_smith.name
  groups = [aws_iam_group.trading_4_analysts.name]
}

resource "aws_iam_user" "ext_grace_silva" {
  name = "fenlum-1bmogc-ext-grace.silva"
}

resource "aws_iam_user_login_profile" "ext_grace_silva" {
  user                    = aws_iam_user.ext_grace_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_silva__contractors" {
  user   = aws_iam_user.ext_grace_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_grace_smith" {
  name = "fenlum-1bmogc-ext-grace.smith"
}

resource "aws_iam_user_login_profile" "ext_grace_smith" {
  user                    = aws_iam_user.ext_grace_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_grace_smith__contractors" {
  user   = aws_iam_user.ext_grace_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_grace_smith__reporting_4_analysts" {
  user   = aws_iam_user.ext_grace_smith.name
  groups = [aws_iam_group.reporting_4_analysts.name]
}

resource "aws_iam_user" "ext_gus_davis" {
  name = "fenlum-1bmogc-ext-gus.davis"
}

resource "aws_iam_user_login_profile" "ext_gus_davis" {
  user                    = aws_iam_user.ext_gus_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_gus_davis__contractors" {
  user   = aws_iam_user.ext_gus_davis.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_policy_attachment" "ext_gus_davis__inj_pol_p1" {
  user       = aws_iam_user.ext_gus_davis.name
  policy_arn = aws_iam_policy.inj_pol_p1.arn
}

resource "aws_iam_user_policy_attachment" "ext_gus_davis__inj_pol_p3" {
  user       = aws_iam_user.ext_gus_davis.name
  policy_arn = aws_iam_policy.inj_pol_p3.arn
}

resource "aws_iam_user" "ext_gus_garcia" {
  name = "fenlum-1bmogc-ext-gus.garcia"
}

resource "aws_iam_user_login_profile" "ext_gus_garcia" {
  user                    = aws_iam_user.ext_gus_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_gus_garcia__contractors" {
  user   = aws_iam_user.ext_gus_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_gus_garcia__treasury_5_analysts" {
  user   = aws_iam_user.ext_gus_garcia.name
  groups = [aws_iam_group.treasury_5_analysts.name]
}

resource "aws_iam_user" "ext_gus_larsen" {
  name = "fenlum-1bmogc-ext-gus.larsen"
}

resource "aws_iam_user_login_profile" "ext_gus_larsen" {
  user                    = aws_iam_user.ext_gus_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_gus_larsen__contractors" {
  user   = aws_iam_user.ext_gus_larsen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_gus_larsen__mobile_5_analysts" {
  user   = aws_iam_user.ext_gus_larsen.name
  groups = [aws_iam_group.mobile_5_analysts.name]
}

resource "aws_iam_user" "ext_hana_garcia" {
  name = "fenlum-1bmogc-ext-hana.garcia"
}

resource "aws_iam_user_login_profile" "ext_hana_garcia" {
  user                    = aws_iam_user.ext_hana_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_hana_garcia__contractors" {
  user   = aws_iam_user.ext_hana_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_hana_garcia__ledger_4_analysts" {
  user   = aws_iam_user.ext_hana_garcia.name
  groups = [aws_iam_group.ledger_4_analysts.name]
}

resource "aws_iam_user" "ext_hana_muller" {
  name = "fenlum-1bmogc-ext-hana.muller"
}

resource "aws_iam_user_login_profile" "ext_hana_muller" {
  user                    = aws_iam_user.ext_hana_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_hana_muller__contractors" {
  user   = aws_iam_user.ext_hana_muller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_hana_wong" {
  name = "fenlum-1bmogc-ext-hana.wong"
}

resource "aws_iam_user_login_profile" "ext_hana_wong" {
  user                    = aws_iam_user.ext_hana_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_hana_wong__contractors" {
  user   = aws_iam_user.ext_hana_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_heidi_wong" {
  name = "fenlum-1bmogc-ext-heidi.wong"
}

resource "aws_iam_user_login_profile" "ext_heidi_wong" {
  user                    = aws_iam_user.ext_heidi_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_heidi_wong__contractors" {
  user   = aws_iam_user.ext_heidi_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_heidi_wong__platform_analysts" {
  user   = aws_iam_user.ext_heidi_wong.name
  groups = [aws_iam_group.platform_analysts.name]
}

resource "aws_iam_user" "ext_ian_miller" {
  name = "fenlum-1bmogc-ext-ian.miller"
}

resource "aws_iam_user_login_profile" "ext_ian_miller" {
  user                    = aws_iam_user.ext_ian_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ian_miller__contractors" {
  user   = aws_iam_user.ext_ian_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_ian_novak" {
  name = "fenlum-1bmogc-ext-ian.novak"
}

resource "aws_iam_user_login_profile" "ext_ian_novak" {
  user                    = aws_iam_user.ext_ian_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ian_novak__contractors" {
  user   = aws_iam_user.ext_ian_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_ian_novak__treasury_7_analysts" {
  user   = aws_iam_user.ext_ian_novak.name
  groups = [aws_iam_group.treasury_7_analysts.name]
}

resource "aws_iam_user" "ext_ian_smith" {
  name = "fenlum-1bmogc-ext-ian.smith"
}

resource "aws_iam_user_login_profile" "ext_ian_smith" {
  user                    = aws_iam_user.ext_ian_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ian_smith__contractors" {
  user   = aws_iam_user.ext_ian_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_ian_smith__lending_analysts" {
  user   = aws_iam_user.ext_ian_smith.name
  groups = [aws_iam_group.lending_analysts.name]
}

resource "aws_iam_user" "ext_ivan_dubois" {
  name = "fenlum-1bmogc-ext-ivan.dubois"
}

resource "aws_iam_user_login_profile" "ext_ivan_dubois" {
  user                    = aws_iam_user.ext_ivan_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ivan_dubois__contractors" {
  user   = aws_iam_user.ext_ivan_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_ivan_smith" {
  name = "fenlum-1bmogc-ext-ivan.smith"
}

resource "aws_iam_user_login_profile" "ext_ivan_smith" {
  user                    = aws_iam_user.ext_ivan_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_ivan_smith__contractors" {
  user   = aws_iam_user.ext_ivan_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_judy_chen" {
  name = "fenlum-1bmogc-ext-judy.chen"
}

resource "aws_iam_user_login_profile" "ext_judy_chen" {
  user                    = aws_iam_user.ext_judy_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_chen__contractors" {
  user   = aws_iam_user.ext_judy_chen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_judy_chen__kyc_2_analysts" {
  user   = aws_iam_user.ext_judy_chen.name
  groups = [aws_iam_group.kyc_2_analysts.name]
}

resource "aws_iam_user" "ext_judy_mehta" {
  name = "fenlum-1bmogc-ext-judy.mehta"
}

resource "aws_iam_user_login_profile" "ext_judy_mehta" {
  user                    = aws_iam_user.ext_judy_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_mehta__contractors" {
  user   = aws_iam_user.ext_judy_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_judy_novak" {
  name = "fenlum-1bmogc-ext-judy.novak"
}

resource "aws_iam_user_login_profile" "ext_judy_novak" {
  user                    = aws_iam_user.ext_judy_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_novak__contractors" {
  user   = aws_iam_user.ext_judy_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_judy_novak__risk_3_analysts" {
  user   = aws_iam_user.ext_judy_novak.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user" "ext_judy_rossi" {
  name = "fenlum-1bmogc-ext-judy.rossi"
}

resource "aws_iam_user_login_profile" "ext_judy_rossi" {
  user                    = aws_iam_user.ext_judy_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_judy_rossi__contractors" {
  user   = aws_iam_user.ext_judy_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_jun_davis" {
  name = "fenlum-1bmogc-ext-jun.davis"
}

resource "aws_iam_user_login_profile" "ext_jun_davis" {
  user                    = aws_iam_user.ext_jun_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_jun_davis__contractors" {
  user   = aws_iam_user.ext_jun_davis.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_jun_davis__treasury_6_analysts" {
  user   = aws_iam_user.ext_jun_davis.name
  groups = [aws_iam_group.treasury_6_analysts.name]
}

resource "aws_iam_user" "ext_jun_haddad" {
  name = "fenlum-1bmogc-ext-jun.haddad"
}

resource "aws_iam_user_login_profile" "ext_jun_haddad" {
  user                    = aws_iam_user.ext_jun_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_jun_haddad__contractors" {
  user   = aws_iam_user.ext_jun_haddad.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_jun_jones" {
  name = "fenlum-1bmogc-ext-jun.jones"
}

resource "aws_iam_user_login_profile" "ext_jun_jones" {
  user                    = aws_iam_user.ext_jun_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_jun_jones__contractors" {
  user   = aws_iam_user.ext_jun_jones.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_jun_jones__risk_analysts" {
  user   = aws_iam_user.ext_jun_jones.name
  groups = [aws_iam_group.risk_analysts.name]
}

resource "aws_iam_user" "ext_jun_kim" {
  name = "fenlum-1bmogc-ext-jun.kim"
}

resource "aws_iam_user_login_profile" "ext_jun_kim" {
  user                    = aws_iam_user.ext_jun_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_jun_kim__contractors" {
  user   = aws_iam_user.ext_jun_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_jun_kim__mobile_6_analysts" {
  user   = aws_iam_user.ext_jun_kim.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "ext_jun_singh" {
  name = "fenlum-1bmogc-ext-jun.singh"
}

resource "aws_iam_user_login_profile" "ext_jun_singh" {
  user                    = aws_iam_user.ext_jun_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_jun_singh__contractors" {
  user   = aws_iam_user.ext_jun_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_jun_singh__trading_6_analysts" {
  user   = aws_iam_user.ext_jun_singh.name
  groups = [aws_iam_group.trading_6_analysts.name]
}

resource "aws_iam_user" "ext_karl_garcia" {
  name = "fenlum-1bmogc-ext-karl.garcia"
}

resource "aws_iam_user_login_profile" "ext_karl_garcia" {
  user                    = aws_iam_user.ext_karl_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_karl_garcia__contractors" {
  user   = aws_iam_user.ext_karl_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_karl_garcia__payments_5_analysts" {
  user   = aws_iam_user.ext_karl_garcia.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user" "ext_kia_miller" {
  name = "fenlum-1bmogc-ext-kia.miller"
}

resource "aws_iam_user_login_profile" "ext_kia_miller" {
  user                    = aws_iam_user.ext_kia_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_miller__contractors" {
  user   = aws_iam_user.ext_kia_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_kia_novak" {
  name = "fenlum-1bmogc-ext-kia.novak"
}

resource "aws_iam_user_login_profile" "ext_kia_novak" {
  user                    = aws_iam_user.ext_kia_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_novak__contractors" {
  user   = aws_iam_user.ext_kia_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_kia_patel" {
  name = "fenlum-1bmogc-ext-kia.patel"
}

resource "aws_iam_user_login_profile" "ext_kia_patel" {
  user                    = aws_iam_user.ext_kia_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_patel__contractors" {
  user   = aws_iam_user.ext_kia_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_kia_silva" {
  name = "fenlum-1bmogc-ext-kia.silva"
}

resource "aws_iam_user_login_profile" "ext_kia_silva" {
  user                    = aws_iam_user.ext_kia_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_kia_silva__contractors" {
  user   = aws_iam_user.ext_kia_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_kia_silva__lending_5_analysts" {
  user   = aws_iam_user.ext_kia_silva.name
  groups = [aws_iam_group.lending_5_analysts.name]
}

resource "aws_iam_user" "ext_lena_miller" {
  name = "fenlum-1bmogc-ext-lena.miller"
}

resource "aws_iam_user_login_profile" "ext_lena_miller" {
  user                    = aws_iam_user.ext_lena_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_lena_miller__contractors" {
  user   = aws_iam_user.ext_lena_miller.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_lena_miller__risk_3_analysts" {
  user   = aws_iam_user.ext_lena_miller.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user" "ext_lena_singh" {
  name = "fenlum-1bmogc-ext-lena.singh"
}

resource "aws_iam_user_login_profile" "ext_lena_singh" {
  user                    = aws_iam_user.ext_lena_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_lena_singh__contractors" {
  user   = aws_iam_user.ext_lena_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_leo_ivanov" {
  name = "fenlum-1bmogc-ext-leo.ivanov"
}

resource "aws_iam_user_login_profile" "ext_leo_ivanov" {
  user                    = aws_iam_user.ext_leo_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_leo_ivanov__contractors" {
  user   = aws_iam_user.ext_leo_ivanov.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_leo_ivanov__kyc_4_analysts" {
  user   = aws_iam_user.ext_leo_ivanov.name
  groups = [aws_iam_group.kyc_4_analysts.name]
}

resource "aws_iam_user" "ext_leo_rossi" {
  name = "fenlum-1bmogc-ext-leo.rossi"
}

resource "aws_iam_user_login_profile" "ext_leo_rossi" {
  user                    = aws_iam_user.ext_leo_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_leo_rossi__contractors" {
  user   = aws_iam_user.ext_leo_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_leo_rossi__mobile_analysts" {
  user   = aws_iam_user.ext_leo_rossi.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "ext_mei_singh" {
  name = "fenlum-1bmogc-ext-mei.singh"
}

resource "aws_iam_user_login_profile" "ext_mei_singh" {
  user                    = aws_iam_user.ext_mei_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mei_singh__contractors" {
  user   = aws_iam_user.ext_mei_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_mei_singh__platform_6_analysts" {
  user   = aws_iam_user.ext_mei_singh.name
  groups = [aws_iam_group.platform_6_analysts.name]
}

resource "aws_iam_user" "ext_mike_haddad" {
  name = "fenlum-1bmogc-ext-mike.haddad"
}

resource "aws_iam_user_login_profile" "ext_mike_haddad" {
  user                    = aws_iam_user.ext_mike_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mike_haddad__contractors" {
  user   = aws_iam_user.ext_mike_haddad.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_nina_ali" {
  name = "fenlum-1bmogc-ext-nina.ali"
}

resource "aws_iam_user_login_profile" "ext_nina_ali" {
  user                    = aws_iam_user.ext_nina_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_nina_ali__contractors" {
  user   = aws_iam_user.ext_nina_ali.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_nina_davis" {
  name = "fenlum-1bmogc-ext-nina.davis"
}

resource "aws_iam_user_login_profile" "ext_nina_davis" {
  user                    = aws_iam_user.ext_nina_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_nina_davis__contractors" {
  user   = aws_iam_user.ext_nina_davis.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_nina_davis__mobile_2_analysts" {
  user   = aws_iam_user.ext_nina_davis.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "ext_nina_sato" {
  name = "fenlum-1bmogc-ext-nina.sato"
}

resource "aws_iam_user_login_profile" "ext_nina_sato" {
  user                    = aws_iam_user.ext_nina_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_nina_sato__contractors" {
  user   = aws_iam_user.ext_nina_sato.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_noor_chen" {
  name = "fenlum-1bmogc-ext-noor.chen"
}

resource "aws_iam_user_login_profile" "ext_noor_chen" {
  user                    = aws_iam_user.ext_noor_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_noor_chen__contractors" {
  user   = aws_iam_user.ext_noor_chen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_noor_chen__mobile_4_analysts" {
  user   = aws_iam_user.ext_noor_chen.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "ext_noor_gupta" {
  name = "fenlum-1bmogc-ext-noor.gupta"
}

resource "aws_iam_user_login_profile" "ext_noor_gupta" {
  user                    = aws_iam_user.ext_noor_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_noor_gupta__contractors" {
  user   = aws_iam_user.ext_noor_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_noor_larsen" {
  name = "fenlum-1bmogc-ext-noor.larsen"
}

resource "aws_iam_user_login_profile" "ext_noor_larsen" {
  user                    = aws_iam_user.ext_noor_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_noor_larsen__contractors" {
  user   = aws_iam_user.ext_noor_larsen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_noor_singh" {
  name = "fenlum-1bmogc-ext-noor.singh"
}

resource "aws_iam_user_login_profile" "ext_noor_singh" {
  user                    = aws_iam_user.ext_noor_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_noor_singh__contractors" {
  user   = aws_iam_user.ext_noor_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_omar_lopez" {
  name = "fenlum-1bmogc-ext-omar.lopez"
}

resource "aws_iam_user_login_profile" "ext_omar_lopez" {
  user                    = aws_iam_user.ext_omar_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_omar_lopez__contractors" {
  user   = aws_iam_user.ext_omar_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_priya_larsen" {
  name = "fenlum-1bmogc-ext-priya.larsen"
}

resource "aws_iam_user_login_profile" "ext_priya_larsen" {
  user                    = aws_iam_user.ext_priya_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_priya_larsen__contractors" {
  user   = aws_iam_user.ext_priya_larsen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_priya_larsen__fraud_2_analysts" {
  user   = aws_iam_user.ext_priya_larsen.name
  groups = [aws_iam_group.fraud_2_analysts.name]
}

resource "aws_iam_user" "ext_priya_patel" {
  name = "fenlum-1bmogc-ext-priya.patel"
}

resource "aws_iam_user_login_profile" "ext_priya_patel" {
  user                    = aws_iam_user.ext_priya_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_priya_patel__contractors" {
  user   = aws_iam_user.ext_priya_patel.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_priya_patel__risk_4_analysts" {
  user   = aws_iam_user.ext_priya_patel.name
  groups = [aws_iam_group.risk_4_analysts.name]
}

resource "aws_iam_user" "ext_quinn_chen" {
  name = "fenlum-1bmogc-ext-quinn.chen"
}

resource "aws_iam_user_login_profile" "ext_quinn_chen" {
  user                    = aws_iam_user.ext_quinn_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_quinn_chen__contractors" {
  user   = aws_iam_user.ext_quinn_chen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_quinn_jones" {
  name = "fenlum-1bmogc-ext-quinn.jones"
}

resource "aws_iam_user_login_profile" "ext_quinn_jones" {
  user                    = aws_iam_user.ext_quinn_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_quinn_jones__contractors" {
  user   = aws_iam_user.ext_quinn_jones.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_quinn_jones__platform_5_analysts" {
  user   = aws_iam_user.ext_quinn_jones.name
  groups = [aws_iam_group.platform_5_analysts.name]
}

resource "aws_iam_user" "ext_quinn_kim" {
  name = "fenlum-1bmogc-ext-quinn.kim"
}

resource "aws_iam_user_login_profile" "ext_quinn_kim" {
  user                    = aws_iam_user.ext_quinn_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_quinn_kim__contractors" {
  user   = aws_iam_user.ext_quinn_kim.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_quinn_kim__mobile_6_analysts" {
  user   = aws_iam_user.ext_quinn_kim.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "ext_quinn_novak" {
  name = "fenlum-1bmogc-ext-quinn.novak"
}

resource "aws_iam_user_login_profile" "ext_quinn_novak" {
  user                    = aws_iam_user.ext_quinn_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_quinn_novak__contractors" {
  user   = aws_iam_user.ext_quinn_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_quinn_singh" {
  name = "fenlum-1bmogc-ext-quinn.singh"
}

resource "aws_iam_user_login_profile" "ext_quinn_singh" {
  user                    = aws_iam_user.ext_quinn_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_quinn_singh__contractors" {
  user   = aws_iam_user.ext_quinn_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_raj_gupta" {
  name = "fenlum-1bmogc-ext-raj.gupta"
}

resource "aws_iam_user_login_profile" "ext_raj_gupta" {
  user                    = aws_iam_user.ext_raj_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_gupta__contractors" {
  user   = aws_iam_user.ext_raj_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_raj_gupta__risk_4_analysts" {
  user   = aws_iam_user.ext_raj_gupta.name
  groups = [aws_iam_group.risk_4_analysts.name]
}

resource "aws_iam_user" "ext_raj_lopez" {
  name = "fenlum-1bmogc-ext-raj.lopez"
}

resource "aws_iam_user_login_profile" "ext_raj_lopez" {
  user                    = aws_iam_user.ext_raj_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_lopez__contractors" {
  user   = aws_iam_user.ext_raj_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_raj_lopez__mobile_5_analysts" {
  user   = aws_iam_user.ext_raj_lopez.name
  groups = [aws_iam_group.mobile_5_analysts.name]
}

resource "aws_iam_user" "ext_raj_singh" {
  name = "fenlum-1bmogc-ext-raj.singh"
}

resource "aws_iam_user_login_profile" "ext_raj_singh" {
  user                    = aws_iam_user.ext_raj_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_singh__contractors" {
  user   = aws_iam_user.ext_raj_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_raj_singh__kyc_7_analysts" {
  user   = aws_iam_user.ext_raj_singh.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user" "ext_raj_smith" {
  name = "fenlum-1bmogc-ext-raj.smith"
}

resource "aws_iam_user_login_profile" "ext_raj_smith" {
  user                    = aws_iam_user.ext_raj_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_smith__contractors" {
  user   = aws_iam_user.ext_raj_smith.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_raj_wong" {
  name = "fenlum-1bmogc-ext-raj.wong"
}

resource "aws_iam_user_login_profile" "ext_raj_wong" {
  user                    = aws_iam_user.ext_raj_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_raj_wong__contractors" {
  user   = aws_iam_user.ext_raj_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_raj_wong__kyc_5_analysts" {
  user   = aws_iam_user.ext_raj_wong.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "ext_sara_mehta" {
  name = "fenlum-1bmogc-ext-sara.mehta"
}

resource "aws_iam_user_login_profile" "ext_sara_mehta" {
  user                    = aws_iam_user.ext_sara_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_sara_mehta__contractors" {
  user   = aws_iam_user.ext_sara_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_sara_mehta__data_eng_6_analysts" {
  user   = aws_iam_user.ext_sara_mehta.name
  groups = [aws_iam_group.data_eng_6_analysts.name]
}

resource "aws_iam_user" "ext_sara_rossi" {
  name = "fenlum-1bmogc-ext-sara.rossi"
}

resource "aws_iam_user_login_profile" "ext_sara_rossi" {
  user                    = aws_iam_user.ext_sara_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_sara_rossi__contractors" {
  user   = aws_iam_user.ext_sara_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_sara_rossi__lending_2_analysts" {
  user   = aws_iam_user.ext_sara_rossi.name
  groups = [aws_iam_group.lending_2_analysts.name]
}

resource "aws_iam_user" "ext_sara_silva" {
  name = "fenlum-1bmogc-ext-sara.silva"
}

resource "aws_iam_user_login_profile" "ext_sara_silva" {
  user                    = aws_iam_user.ext_sara_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_sara_silva__contractors" {
  user   = aws_iam_user.ext_sara_silva.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_tom_garcia" {
  name = "fenlum-1bmogc-ext-tom.garcia"
}

resource "aws_iam_user_login_profile" "ext_tom_garcia" {
  user                    = aws_iam_user.ext_tom_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_tom_garcia__contractors" {
  user   = aws_iam_user.ext_tom_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_uma_mehta" {
  name = "fenlum-1bmogc-ext-uma.mehta"
}

resource "aws_iam_user_login_profile" "ext_uma_mehta" {
  user                    = aws_iam_user.ext_uma_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_uma_mehta__contractors" {
  user   = aws_iam_user.ext_uma_mehta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_vik_davis" {
  name = "fenlum-1bmogc-ext-vik.davis"
}

resource "aws_iam_user_login_profile" "ext_vik_davis" {
  user                    = aws_iam_user.ext_vik_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_vik_davis__contractors" {
  user   = aws_iam_user.ext_vik_davis.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_vik_haddad" {
  name = "fenlum-1bmogc-ext-vik.haddad"
}

resource "aws_iam_user_login_profile" "ext_vik_haddad" {
  user                    = aws_iam_user.ext_vik_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_vik_haddad__contractors" {
  user   = aws_iam_user.ext_vik_haddad.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_vik_novak" {
  name = "fenlum-1bmogc-ext-vik.novak"
}

resource "aws_iam_user_login_profile" "ext_vik_novak" {
  user                    = aws_iam_user.ext_vik_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_vik_novak__contractors" {
  user   = aws_iam_user.ext_vik_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_vik_novak__reporting_3_analysts" {
  user   = aws_iam_user.ext_vik_novak.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "ext_vik_okafor" {
  name = "fenlum-1bmogc-ext-vik.okafor"
}

resource "aws_iam_user_login_profile" "ext_vik_okafor" {
  user                    = aws_iam_user.ext_vik_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_vik_okafor__contractors" {
  user   = aws_iam_user.ext_vik_okafor.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_vik_okafor__risk_analysts" {
  user   = aws_iam_user.ext_vik_okafor.name
  groups = [aws_iam_group.risk_analysts.name]
}

resource "aws_iam_user" "ext_vik_rossi" {
  name = "fenlum-1bmogc-ext-vik.rossi"
}

resource "aws_iam_user_login_profile" "ext_vik_rossi" {
  user                    = aws_iam_user.ext_vik_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_vik_rossi__contractors" {
  user   = aws_iam_user.ext_vik_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_wen_gupta" {
  name = "fenlum-1bmogc-ext-wen.gupta"
}

resource "aws_iam_user_login_profile" "ext_wen_gupta" {
  user                    = aws_iam_user.ext_wen_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_wen_gupta__contractors" {
  user   = aws_iam_user.ext_wen_gupta.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_wen_gupta1264" {
  name = "fenlum-1bmogc-ext-wen.gupta1264"
}

resource "aws_iam_user_login_profile" "ext_wen_gupta1264" {
  user                    = aws_iam_user.ext_wen_gupta1264.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_wen_gupta1264__contractors" {
  user   = aws_iam_user.ext_wen_gupta1264.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_wen_gupta1264__fraud_6_analysts" {
  user   = aws_iam_user.ext_wen_gupta1264.name
  groups = [aws_iam_group.fraud_6_analysts.name]
}

resource "aws_iam_user" "ext_xia_rossi" {
  name = "fenlum-1bmogc-ext-xia.rossi"
}

resource "aws_iam_user_login_profile" "ext_xia_rossi" {
  user                    = aws_iam_user.ext_xia_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_xia_rossi__contractors" {
  user   = aws_iam_user.ext_xia_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_yara_garcia" {
  name = "fenlum-1bmogc-ext-yara.garcia"
}

resource "aws_iam_user_login_profile" "ext_yara_garcia" {
  user                    = aws_iam_user.ext_yara_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_yara_garcia__contractors" {
  user   = aws_iam_user.ext_yara_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_zed_ali" {
  name = "fenlum-1bmogc-ext-zed.ali"
}

resource "aws_iam_user_login_profile" "ext_zed_ali" {
  user                    = aws_iam_user.ext_zed_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_zed_ali__contractors" {
  user   = aws_iam_user.ext_zed_ali.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_zed_chen" {
  name = "fenlum-1bmogc-ext-zed.chen"
}

resource "aws_iam_user_login_profile" "ext_zed_chen" {
  user                    = aws_iam_user.ext_zed_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_zed_chen__contractors" {
  user   = aws_iam_user.ext_zed_chen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_zed_chen__treasury_4_analysts" {
  user   = aws_iam_user.ext_zed_chen.name
  groups = [aws_iam_group.treasury_4_analysts.name]
}

resource "aws_iam_user" "ext_zed_garcia" {
  name = "fenlum-1bmogc-ext-zed.garcia"
}

resource "aws_iam_user_login_profile" "ext_zed_garcia" {
  user                    = aws_iam_user.ext_zed_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_zed_garcia__contractors" {
  user   = aws_iam_user.ext_zed_garcia.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "ext_zed_lopez" {
  name = "fenlum-1bmogc-ext-zed.lopez"
}

resource "aws_iam_user_login_profile" "ext_zed_lopez" {
  user                    = aws_iam_user.ext_zed_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_zed_lopez__contractors" {
  user   = aws_iam_user.ext_zed_lopez.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "fay_ali" {
  name = "fenlum-1bmogc-fay.ali"
}

resource "aws_iam_user_login_profile" "fay_ali" {
  user                    = aws_iam_user.fay_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_ali__mobile_devs" {
  user   = aws_iam_user.fay_ali.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "fay_brown" {
  name = "fenlum-1bmogc-fay.brown"
}

resource "aws_iam_user_group_membership" "fay_brown__ledger_devs" {
  user   = aws_iam_user.fay_brown.name
  groups = [aws_iam_group.ledger_devs.name]
}

resource "aws_iam_user" "fay_gupta" {
  name = "fenlum-1bmogc-fay.gupta"
}

resource "aws_iam_user_group_membership" "fay_gupta__kyc_4_devs" {
  user   = aws_iam_user.fay_gupta.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user" "fay_gupta4814" {
  name = "fenlum-1bmogc-fay.gupta4814"
}

resource "aws_iam_user_login_profile" "fay_gupta4814" {
  user                    = aws_iam_user.fay_gupta4814.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_gupta4814__ledger_4_devs" {
  user   = aws_iam_user.fay_gupta4814.name
  groups = [aws_iam_group.ledger_4_devs.name]
}

resource "aws_iam_user_group_membership" "fay_gupta4814__reporting_5_analysts" {
  user   = aws_iam_user.fay_gupta4814.name
  groups = [aws_iam_group.reporting_5_analysts.name]
}

resource "aws_iam_user" "fay_haddad" {
  name = "fenlum-1bmogc-fay.haddad"
}

resource "aws_iam_user_group_membership" "fay_haddad__payments_5_analysts" {
  user   = aws_iam_user.fay_haddad.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user" "fay_haddad3750" {
  name = "fenlum-1bmogc-fay.haddad3750"
}

resource "aws_iam_user_login_profile" "fay_haddad3750" {
  user                    = aws_iam_user.fay_haddad3750.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_haddad3750__lending_2_devs" {
  user   = aws_iam_user.fay_haddad3750.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user" "fay_ivanov" {
  name = "fenlum-1bmogc-fay.ivanov"
}

resource "aws_iam_user_login_profile" "fay_ivanov" {
  user                    = aws_iam_user.fay_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_ivanov__payments_devs" {
  user   = aws_iam_user.fay_ivanov.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user" "fay_khan" {
  name = "fenlum-1bmogc-fay.khan"
}

resource "aws_iam_user_login_profile" "fay_khan" {
  user                    = aws_iam_user.fay_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_khan__kyc_4_devs" {
  user   = aws_iam_user.fay_khan.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user" "fay_larsen" {
  name = "fenlum-1bmogc-fay.larsen"
}

resource "aws_iam_user_login_profile" "fay_larsen" {
  user                    = aws_iam_user.fay_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_larsen__mobile_6_analysts" {
  user   = aws_iam_user.fay_larsen.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "fay_muller" {
  name = "fenlum-1bmogc-fay.muller"
}

resource "aws_iam_user_login_profile" "fay_muller" {
  user                    = aws_iam_user.fay_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_muller__data_eng_2_devs" {
  user   = aws_iam_user.fay_muller.name
  groups = [aws_iam_group.data_eng_2_devs.name]
}

resource "aws_iam_user" "fay_okafor" {
  name = "fenlum-1bmogc-fay.okafor"
}

resource "aws_iam_user_group_membership" "fay_okafor__treasury_devs" {
  user   = aws_iam_user.fay_okafor.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "fay_patel" {
  name = "fenlum-1bmogc-fay.patel"
}

resource "aws_iam_user_group_membership" "fay_patel__risk_3_devs" {
  user   = aws_iam_user.fay_patel.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user" "fay_patel9990" {
  name = "fenlum-1bmogc-fay.patel9990"
}

resource "aws_iam_user_login_profile" "fay_patel9990" {
  user                    = aws_iam_user.fay_patel9990.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_patel9990__platform_5_analysts" {
  user   = aws_iam_user.fay_patel9990.name
  groups = [aws_iam_group.platform_5_analysts.name]
}

resource "aws_iam_user" "fay_reddy" {
  name = "fenlum-1bmogc-fay.reddy"
}

resource "aws_iam_user_group_membership" "fay_reddy__reporting_3_devs" {
  user   = aws_iam_user.fay_reddy.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user" "fay_reddy3128" {
  name = "fenlum-1bmogc-fay.reddy3128"
}

resource "aws_iam_user_login_profile" "fay_reddy3128" {
  user                    = aws_iam_user.fay_reddy3128.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_reddy3128__kyc_2_devs" {
  user   = aws_iam_user.fay_reddy3128.name
  groups = [aws_iam_group.kyc_2_devs.name]
}

resource "aws_iam_user" "fay_sato" {
  name = "fenlum-1bmogc-fay.sato"
}

resource "aws_iam_user_login_profile" "fay_sato" {
  user                    = aws_iam_user.fay_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_sato__data_eng_2_devs" {
  user   = aws_iam_user.fay_sato.name
  groups = [aws_iam_group.data_eng_2_devs.name]
}

resource "aws_iam_user" "fay_sato5047" {
  name = "fenlum-1bmogc-fay.sato5047"
}

resource "aws_iam_user_login_profile" "fay_sato5047" {
  user                    = aws_iam_user.fay_sato5047.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_sato5047__payments_6_devs" {
  user   = aws_iam_user.fay_sato5047.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "fay_silva" {
  name = "fenlum-1bmogc-fay.silva"
}

resource "aws_iam_user_group_membership" "fay_silva__mobile_2_analysts" {
  user   = aws_iam_user.fay_silva.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user_group_membership" "fay_silva__payments_7_analysts" {
  user   = aws_iam_user.fay_silva.name
  groups = [aws_iam_group.payments_7_analysts.name]
}

resource "aws_iam_user" "fay_tanaka" {
  name = "fenlum-1bmogc-fay.tanaka"
}

resource "aws_iam_user_login_profile" "fay_tanaka" {
  user                    = aws_iam_user.fay_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_tanaka__fraud_6_analysts" {
  user   = aws_iam_user.fay_tanaka.name
  groups = [aws_iam_group.fraud_6_analysts.name]
}

resource "aws_iam_user_group_membership" "fay_tanaka__kyc_6_analysts" {
  user   = aws_iam_user.fay_tanaka.name
  groups = [aws_iam_group.kyc_6_analysts.name]
}

resource "aws_iam_user" "fay_wong" {
  name = "fenlum-1bmogc-fay.wong"
}

resource "aws_iam_user_login_profile" "fay_wong" {
  user                    = aws_iam_user.fay_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_wong__kyc_4_devs" {
  user   = aws_iam_user.fay_wong.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user" "fay_wong1590" {
  name = "fenlum-1bmogc-fay.wong1590"
}

resource "aws_iam_user_login_profile" "fay_wong1590" {
  user                    = aws_iam_user.fay_wong1590.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_wong1590__fraud_2_devs" {
  user   = aws_iam_user.fay_wong1590.name
  groups = [aws_iam_group.fraud_2_devs.name]
}

resource "aws_iam_user" "frank_brown" {
  name = "fenlum-1bmogc-frank.brown"
}

resource "aws_iam_user_login_profile" "frank_brown" {
  user                    = aws_iam_user.frank_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_brown__data_eng_6_devs" {
  user   = aws_iam_user.frank_brown.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user" "frank_chen" {
  name = "fenlum-1bmogc-frank.chen"
}

resource "aws_iam_user_login_profile" "frank_chen" {
  user                    = aws_iam_user.frank_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_chen__data_eng_3_devs" {
  user   = aws_iam_user.frank_chen.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "frank_chen__base_readonly" {
  user       = aws_iam_user.frank_chen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "frank_davis" {
  name = "fenlum-1bmogc-frank.davis"
}

resource "aws_iam_user_login_profile" "frank_davis" {
  user                    = aws_iam_user.frank_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_davis__reporting_devs" {
  user   = aws_iam_user.frank_davis.name
  groups = [aws_iam_group.reporting_devs.name]
}

resource "aws_iam_user" "frank_davis6005" {
  name = "fenlum-1bmogc-frank.davis6005"
}

resource "aws_iam_user_login_profile" "frank_davis6005" {
  user                    = aws_iam_user.frank_davis6005.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_davis6005__kyc_3_devs" {
  user   = aws_iam_user.frank_davis6005.name
  groups = [aws_iam_group.kyc_3_devs.name]
}

resource "aws_iam_user_group_membership" "frank_davis6005__kyc_6_analysts" {
  user   = aws_iam_user.frank_davis6005.name
  groups = [aws_iam_group.kyc_6_analysts.name]
}

resource "aws_iam_user" "frank_dubois" {
  name = "fenlum-1bmogc-frank.dubois"
}

resource "aws_iam_user_login_profile" "frank_dubois" {
  user                    = aws_iam_user.frank_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_dubois__lending_4_devs" {
  user   = aws_iam_user.frank_dubois.name
  groups = [aws_iam_group.lending_4_devs.name]
}

resource "aws_iam_user" "frank_gupta" {
  name = "fenlum-1bmogc-frank.gupta"
}

resource "aws_iam_user_group_membership" "frank_gupta__data_eng_2_analysts" {
  user   = aws_iam_user.frank_gupta.name
  groups = [aws_iam_group.data_eng_2_analysts.name]
}

resource "aws_iam_user_group_membership" "frank_gupta__data_eng_4_analysts" {
  user   = aws_iam_user.frank_gupta.name
  groups = [aws_iam_group.data_eng_4_analysts.name]
}

resource "aws_iam_user" "frank_haddad" {
  name = "fenlum-1bmogc-frank.haddad"
}

resource "aws_iam_user_group_membership" "frank_haddad__lending_5_devs" {
  user   = aws_iam_user.frank_haddad.name
  groups = [aws_iam_group.lending_5_devs.name]
}

resource "aws_iam_user" "frank_larsen" {
  name = "fenlum-1bmogc-frank.larsen"
}

resource "aws_iam_user_group_membership" "frank_larsen__platform_5_devs" {
  user   = aws_iam_user.frank_larsen.name
  groups = [aws_iam_group.platform_5_devs.name]
}

resource "aws_iam_user" "frank_reddy" {
  name = "fenlum-1bmogc-frank.reddy"
}

resource "aws_iam_user_login_profile" "frank_reddy" {
  user                    = aws_iam_user.frank_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_reddy__payments_4_devs" {
  user   = aws_iam_user.frank_reddy.name
  groups = [aws_iam_group.payments_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "frank_reddy__base_readonly" {
  user       = aws_iam_user.frank_reddy.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "frank_rossi" {
  name = "fenlum-1bmogc-frank.rossi"
}

resource "aws_iam_user_login_profile" "frank_rossi" {
  user                    = aws_iam_user.frank_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_rossi__risk_2_analysts" {
  user   = aws_iam_user.frank_rossi.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user_group_membership" "frank_rossi__lending_analysts" {
  user   = aws_iam_user.frank_rossi.name
  groups = [aws_iam_group.lending_analysts.name]
}

resource "aws_iam_user" "frank_sato" {
  name = "fenlum-1bmogc-frank.sato"
}

resource "aws_iam_user_login_profile" "frank_sato" {
  user                    = aws_iam_user.frank_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_sato__payments_3_devs" {
  user   = aws_iam_user.frank_sato.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "frank_sato3068" {
  name = "fenlum-1bmogc-frank.sato3068"
}

resource "aws_iam_user_login_profile" "frank_sato3068" {
  user                    = aws_iam_user.frank_sato3068.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_sato3068__payments_3_devs" {
  user   = aws_iam_user.frank_sato3068.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "frank_wong" {
  name = "fenlum-1bmogc-frank.wong"
}

resource "aws_iam_user_login_profile" "frank_wong" {
  user                    = aws_iam_user.frank_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_wong__reporting_2_devs" {
  user   = aws_iam_user.frank_wong.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "grace_ali" {
  name = "fenlum-1bmogc-grace.ali"
}

resource "aws_iam_user_login_profile" "grace_ali" {
  user                    = aws_iam_user.grace_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_ali__risk_devs" {
  user   = aws_iam_user.grace_ali.name
  groups = [aws_iam_group.risk_devs.name]
}

resource "aws_iam_user" "grace_cohen" {
  name = "fenlum-1bmogc-grace.cohen"
}

resource "aws_iam_user_login_profile" "grace_cohen" {
  user                    = aws_iam_user.grace_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_cohen__trading_analysts" {
  user   = aws_iam_user.grace_cohen.name
  groups = [aws_iam_group.trading_analysts.name]
}

resource "aws_iam_user" "grace_davis" {
  name = "fenlum-1bmogc-grace.davis"
}

resource "aws_iam_user_group_membership" "grace_davis__kyc_6_devs" {
  user   = aws_iam_user.grace_davis.name
  groups = [aws_iam_group.kyc_6_devs.name]
}

resource "aws_iam_user" "grace_gupta" {
  name = "fenlum-1bmogc-grace.gupta"
}

resource "aws_iam_user_login_profile" "grace_gupta" {
  user                    = aws_iam_user.grace_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_gupta__ledger_6_devs" {
  user   = aws_iam_user.grace_gupta.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "grace_gupta__base_readonly" {
  user       = aws_iam_user.grace_gupta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "grace_gupta2030" {
  name = "fenlum-1bmogc-grace.gupta2030"
}

resource "aws_iam_user_login_profile" "grace_gupta2030" {
  user                    = aws_iam_user.grace_gupta2030.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_gupta2030__trading_7_devs" {
  user   = aws_iam_user.grace_gupta2030.name
  groups = [aws_iam_group.trading_7_devs.name]
}

resource "aws_iam_user" "grace_gupta9789" {
  name = "fenlum-1bmogc-grace.gupta9789"
}

resource "aws_iam_user_group_membership" "grace_gupta9789__payments_2_devs" {
  user   = aws_iam_user.grace_gupta9789.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user_group_membership" "grace_gupta9789__trading_3_analysts" {
  user   = aws_iam_user.grace_gupta9789.name
  groups = [aws_iam_group.trading_3_analysts.name]
}

resource "aws_iam_user" "grace_haddad" {
  name = "fenlum-1bmogc-grace.haddad"
}

resource "aws_iam_user_login_profile" "grace_haddad" {
  user                    = aws_iam_user.grace_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_haddad__risk_2_analysts" {
  user   = aws_iam_user.grace_haddad.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user" "grace_ivanov" {
  name = "fenlum-1bmogc-grace.ivanov"
}

resource "aws_iam_user_login_profile" "grace_ivanov" {
  user                    = aws_iam_user.grace_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_ivanov__treasury_6_devs" {
  user   = aws_iam_user.grace_ivanov.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user" "grace_jones" {
  name = "fenlum-1bmogc-grace.jones"
}

resource "aws_iam_user_login_profile" "grace_jones" {
  user                    = aws_iam_user.grace_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_jones__kyc_3_devs" {
  user   = aws_iam_user.grace_jones.name
  groups = [aws_iam_group.kyc_3_devs.name]
}

resource "aws_iam_user" "grace_khan" {
  name = "fenlum-1bmogc-grace.khan"
}

resource "aws_iam_user_login_profile" "grace_khan" {
  user                    = aws_iam_user.grace_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_khan__trading_devs" {
  user   = aws_iam_user.grace_khan.name
  groups = [aws_iam_group.trading_devs.name]
}

resource "aws_iam_user_policy_attachment" "grace_khan__base_readonly" {
  user       = aws_iam_user.grace_khan.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "grace_kim" {
  name = "fenlum-1bmogc-grace.kim"
}

resource "aws_iam_user_login_profile" "grace_kim" {
  user                    = aws_iam_user.grace_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_kim__lending_7_devs" {
  user   = aws_iam_user.grace_kim.name
  groups = [aws_iam_group.lending_7_devs.name]
}

resource "aws_iam_user_group_membership" "grace_kim__ledger_2_analysts" {
  user   = aws_iam_user.grace_kim.name
  groups = [aws_iam_group.ledger_2_analysts.name]
}

resource "aws_iam_user" "grace_kim3524" {
  name = "fenlum-1bmogc-grace.kim3524"
}

resource "aws_iam_user_login_profile" "grace_kim3524" {
  user                    = aws_iam_user.grace_kim3524.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_kim3524__risk_devs" {
  user   = aws_iam_user.grace_kim3524.name
  groups = [aws_iam_group.risk_devs.name]
}

resource "aws_iam_user" "grace_mehta" {
  name = "fenlum-1bmogc-grace.mehta"
}

resource "aws_iam_user_login_profile" "grace_mehta" {
  user                    = aws_iam_user.grace_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_mehta__risk_6_devs" {
  user   = aws_iam_user.grace_mehta.name
  groups = [aws_iam_group.risk_6_devs.name]
}

resource "aws_iam_user" "grace_mehta6826" {
  name = "fenlum-1bmogc-grace.mehta6826"
}

resource "aws_iam_user_login_profile" "grace_mehta6826" {
  user                    = aws_iam_user.grace_mehta6826.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_mehta6826__trading_7_devs" {
  user   = aws_iam_user.grace_mehta6826.name
  groups = [aws_iam_group.trading_7_devs.name]
}

resource "aws_iam_user" "grace_mehta8127" {
  name = "fenlum-1bmogc-grace.mehta8127"
}

resource "aws_iam_user_group_membership" "grace_mehta8127__kyc_7_devs" {
  user   = aws_iam_user.grace_mehta8127.name
  groups = [aws_iam_group.kyc_7_devs.name]
}

resource "aws_iam_user_group_membership" "grace_mehta8127__mobile_4_analysts" {
  user   = aws_iam_user.grace_mehta8127.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "grace_mehta8127__base_readonly" {
  user       = aws_iam_user.grace_mehta8127.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "grace_novak" {
  name = "fenlum-1bmogc-grace.novak"
}

resource "aws_iam_user_group_membership" "grace_novak__data_eng_5_devs" {
  user   = aws_iam_user.grace_novak.name
  groups = [aws_iam_group.data_eng_5_devs.name]
}

resource "aws_iam_user" "grace_novak9951" {
  name = "fenlum-1bmogc-grace.novak9951"
}

resource "aws_iam_user_group_membership" "grace_novak9951__kyc_2_analysts" {
  user   = aws_iam_user.grace_novak9951.name
  groups = [aws_iam_group.kyc_2_analysts.name]
}

resource "aws_iam_user" "grace_patel" {
  name = "fenlum-1bmogc-grace.patel"
}

resource "aws_iam_user_login_profile" "grace_patel" {
  user                    = aws_iam_user.grace_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_patel__platform_analysts" {
  user   = aws_iam_user.grace_patel.name
  groups = [aws_iam_group.platform_analysts.name]
}

resource "aws_iam_user" "grace_silva" {
  name = "fenlum-1bmogc-grace.silva"
}

resource "aws_iam_user_login_profile" "grace_silva" {
  user                    = aws_iam_user.grace_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_silva__payments_7_devs" {
  user   = aws_iam_user.grace_silva.name
  groups = [aws_iam_group.payments_7_devs.name]
}

resource "aws_iam_user_group_membership" "grace_silva__risk_4_analysts" {
  user   = aws_iam_user.grace_silva.name
  groups = [aws_iam_group.risk_4_analysts.name]
}

resource "aws_iam_user" "grace_silva8516" {
  name = "fenlum-1bmogc-grace.silva8516"
}

resource "aws_iam_user_login_profile" "grace_silva8516" {
  user                    = aws_iam_user.grace_silva8516.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_silva8516__payments_4_devs" {
  user   = aws_iam_user.grace_silva8516.name
  groups = [aws_iam_group.payments_4_devs.name]
}

resource "aws_iam_user" "grace_singh" {
  name = "fenlum-1bmogc-grace.singh"
}

resource "aws_iam_user_login_profile" "grace_singh" {
  user                    = aws_iam_user.grace_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_singh__ledger_analysts" {
  user   = aws_iam_user.grace_singh.name
  groups = [aws_iam_group.ledger_analysts.name]
}

resource "aws_iam_user_group_membership" "grace_singh__reporting_6_analysts" {
  user   = aws_iam_user.grace_singh.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user" "grace_tanaka" {
  name = "fenlum-1bmogc-grace.tanaka"
}

resource "aws_iam_user_login_profile" "grace_tanaka" {
  user                    = aws_iam_user.grace_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_tanaka__reporting_4_devs" {
  user   = aws_iam_user.grace_tanaka.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user" "grace_wong" {
  name = "fenlum-1bmogc-grace.wong"
}

resource "aws_iam_user_login_profile" "grace_wong" {
  user                    = aws_iam_user.grace_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "grace_wong__fraud_6_devs" {
  user   = aws_iam_user.grace_wong.name
  groups = [aws_iam_group.fraud_6_devs.name]
}

resource "aws_iam_user" "gus_ali" {
  name = "fenlum-1bmogc-gus.ali"
}

resource "aws_iam_user_login_profile" "gus_ali" {
  user                    = aws_iam_user.gus_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_ali__platform_6_analysts" {
  user   = aws_iam_user.gus_ali.name
  groups = [aws_iam_group.platform_6_analysts.name]
}

resource "aws_iam_user" "gus_ali4959" {
  name = "fenlum-1bmogc-gus.ali4959"
}

resource "aws_iam_user_group_membership" "gus_ali4959__platform_4_devs" {
  user   = aws_iam_user.gus_ali4959.name
  groups = [aws_iam_group.platform_4_devs.name]
}

resource "aws_iam_user" "gus_ali9290" {
  name = "fenlum-1bmogc-gus.ali9290"
}

resource "aws_iam_user_login_profile" "gus_ali9290" {
  user                    = aws_iam_user.gus_ali9290.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_ali9290__treasury_2_devs" {
  user   = aws_iam_user.gus_ali9290.name
  groups = [aws_iam_group.treasury_2_devs.name]
}

resource "aws_iam_user_group_membership" "gus_ali9290__payments_2_analysts" {
  user   = aws_iam_user.gus_ali9290.name
  groups = [aws_iam_group.payments_2_analysts.name]
}

resource "aws_iam_user" "gus_brown" {
  name = "fenlum-1bmogc-gus.brown"
}

resource "aws_iam_user_login_profile" "gus_brown" {
  user                    = aws_iam_user.gus_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_brown__trading_5_devs" {
  user   = aws_iam_user.gus_brown.name
  groups = [aws_iam_group.trading_5_devs.name]
}

resource "aws_iam_user" "gus_brown3326" {
  name = "fenlum-1bmogc-gus.brown3326"
}

resource "aws_iam_user_login_profile" "gus_brown3326" {
  user                    = aws_iam_user.gus_brown3326.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_brown3326__treasury_3_devs" {
  user   = aws_iam_user.gus_brown3326.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user" "gus_brown6374" {
  name = "fenlum-1bmogc-gus.brown6374"
}

resource "aws_iam_user_login_profile" "gus_brown6374" {
  user                    = aws_iam_user.gus_brown6374.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_brown6374__ledger_2_devs" {
  user   = aws_iam_user.gus_brown6374.name
  groups = [aws_iam_group.ledger_2_devs.name]
}

resource "aws_iam_user" "gus_chen" {
  name = "fenlum-1bmogc-gus.chen"
}

resource "aws_iam_user_login_profile" "gus_chen" {
  user                    = aws_iam_user.gus_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_chen__treasury_4_analysts" {
  user   = aws_iam_user.gus_chen.name
  groups = [aws_iam_group.treasury_4_analysts.name]
}

resource "aws_iam_user" "gus_cohen" {
  name = "fenlum-1bmogc-gus.cohen"
}

resource "aws_iam_user_login_profile" "gus_cohen" {
  user                    = aws_iam_user.gus_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_cohen__data_eng_analysts" {
  user   = aws_iam_user.gus_cohen.name
  groups = [aws_iam_group.data_eng_analysts.name]
}

resource "aws_iam_user" "gus_dubois" {
  name = "fenlum-1bmogc-gus.dubois"
}

resource "aws_iam_user_login_profile" "gus_dubois" {
  user                    = aws_iam_user.gus_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_dubois__fraud_6_devs" {
  user   = aws_iam_user.gus_dubois.name
  groups = [aws_iam_group.fraud_6_devs.name]
}

resource "aws_iam_user" "gus_dubois4828" {
  name = "fenlum-1bmogc-gus.dubois4828"
}

resource "aws_iam_user_login_profile" "gus_dubois4828" {
  user                    = aws_iam_user.gus_dubois4828.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_dubois4828__risk_5_devs" {
  user   = aws_iam_user.gus_dubois4828.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user" "gus_dubois6603" {
  name = "fenlum-1bmogc-gus.dubois6603"
}

resource "aws_iam_user_login_profile" "gus_dubois6603" {
  user                    = aws_iam_user.gus_dubois6603.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_dubois6603__reporting_5_devs" {
  user   = aws_iam_user.gus_dubois6603.name
  groups = [aws_iam_group.reporting_5_devs.name]
}

resource "aws_iam_user" "gus_garcia" {
  name = "fenlum-1bmogc-gus.garcia"
}

resource "aws_iam_user_group_membership" "gus_garcia__fraud_5_analysts" {
  user   = aws_iam_user.gus_garcia.name
  groups = [aws_iam_group.fraud_5_analysts.name]
}

resource "aws_iam_user" "gus_garcia9961" {
  name = "fenlum-1bmogc-gus.garcia9961"
}

resource "aws_iam_user_login_profile" "gus_garcia9961" {
  user                    = aws_iam_user.gus_garcia9961.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_garcia9961__data_eng_5_devs" {
  user   = aws_iam_user.gus_garcia9961.name
  groups = [aws_iam_group.data_eng_5_devs.name]
}

resource "aws_iam_user_group_membership" "gus_garcia9961__data_eng_6_analysts" {
  user   = aws_iam_user.gus_garcia9961.name
  groups = [aws_iam_group.data_eng_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "gus_garcia9961__base_readonly" {
  user       = aws_iam_user.gus_garcia9961.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "gus_gupta" {
  name = "fenlum-1bmogc-gus.gupta"
}

resource "aws_iam_user_login_profile" "gus_gupta" {
  user                    = aws_iam_user.gus_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_gupta__treasury_4_devs" {
  user   = aws_iam_user.gus_gupta.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user_group_membership" "gus_gupta__fraud_6_analysts" {
  user   = aws_iam_user.gus_gupta.name
  groups = [aws_iam_group.fraud_6_analysts.name]
}

resource "aws_iam_user" "gus_haddad" {
  name = "fenlum-1bmogc-gus.haddad"
}

resource "aws_iam_user_login_profile" "gus_haddad" {
  user                    = aws_iam_user.gus_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_haddad__ledger_3_devs" {
  user   = aws_iam_user.gus_haddad.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user_group_membership" "gus_haddad__ledger_7_analysts" {
  user   = aws_iam_user.gus_haddad.name
  groups = [aws_iam_group.ledger_7_analysts.name]
}

resource "aws_iam_user" "gus_haddad4658" {
  name = "fenlum-1bmogc-gus.haddad4658"
}

resource "aws_iam_user_login_profile" "gus_haddad4658" {
  user                    = aws_iam_user.gus_haddad4658.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_haddad4658__ledger_2_devs" {
  user   = aws_iam_user.gus_haddad4658.name
  groups = [aws_iam_group.ledger_2_devs.name]
}

resource "aws_iam_user" "gus_ivanov" {
  name = "fenlum-1bmogc-gus.ivanov"
}

resource "aws_iam_user_login_profile" "gus_ivanov" {
  user                    = aws_iam_user.gus_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_ivanov__kyc_3_devs" {
  user   = aws_iam_user.gus_ivanov.name
  groups = [aws_iam_group.kyc_3_devs.name]
}

resource "aws_iam_user" "gus_jones" {
  name = "fenlum-1bmogc-gus.jones"
}

resource "aws_iam_user_login_profile" "gus_jones" {
  user                    = aws_iam_user.gus_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_jones__lending_2_devs" {
  user   = aws_iam_user.gus_jones.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user" "gus_kim" {
  name = "fenlum-1bmogc-gus.kim"
}

resource "aws_iam_user_login_profile" "gus_kim" {
  user                    = aws_iam_user.gus_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_kim__risk_2_devs" {
  user   = aws_iam_user.gus_kim.name
  groups = [aws_iam_group.risk_2_devs.name]
}

resource "aws_iam_user" "gus_larsen" {
  name = "fenlum-1bmogc-gus.larsen"
}

resource "aws_iam_user_login_profile" "gus_larsen" {
  user                    = aws_iam_user.gus_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_larsen__risk_7_analysts" {
  user   = aws_iam_user.gus_larsen.name
  groups = [aws_iam_group.risk_7_analysts.name]
}

resource "aws_iam_user_policy_attachment" "gus_larsen__inj_pol_p11" {
  user       = aws_iam_user.gus_larsen.name
  policy_arn = aws_iam_policy.inj_pol_p11.arn
}

resource "aws_iam_user_policy_attachment" "gus_larsen__inj_pol_p12" {
  user       = aws_iam_user.gus_larsen.name
  policy_arn = aws_iam_policy.inj_pol_p12.arn
}

resource "aws_iam_user" "gus_lopez" {
  name = "fenlum-1bmogc-gus.lopez"
}

resource "aws_iam_user_login_profile" "gus_lopez" {
  user                    = aws_iam_user.gus_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_lopez__data_eng_3_devs" {
  user   = aws_iam_user.gus_lopez.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user" "gus_miller" {
  name = "fenlum-1bmogc-gus.miller"
}

resource "aws_iam_user_group_membership" "gus_miller__kyc_devs" {
  user   = aws_iam_user.gus_miller.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user" "gus_muller" {
  name = "fenlum-1bmogc-gus.muller"
}

resource "aws_iam_user_login_profile" "gus_muller" {
  user                    = aws_iam_user.gus_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_muller__trading_7_devs" {
  user   = aws_iam_user.gus_muller.name
  groups = [aws_iam_group.trading_7_devs.name]
}

resource "aws_iam_user" "gus_muller505" {
  name = "fenlum-1bmogc-gus.muller505"
}

resource "aws_iam_user_login_profile" "gus_muller505" {
  user                    = aws_iam_user.gus_muller505.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_muller505__trading_2_devs" {
  user   = aws_iam_user.gus_muller505.name
  groups = [aws_iam_group.trading_2_devs.name]
}

resource "aws_iam_user" "gus_muller8883" {
  name = "fenlum-1bmogc-gus.muller8883"
}

resource "aws_iam_user_login_profile" "gus_muller8883" {
  user                    = aws_iam_user.gus_muller8883.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_muller8883__mobile_5_devs" {
  user   = aws_iam_user.gus_muller8883.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user" "gus_novak" {
  name = "fenlum-1bmogc-gus.novak"
}

resource "aws_iam_user_login_profile" "gus_novak" {
  user                    = aws_iam_user.gus_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_novak__data_eng_devs" {
  user   = aws_iam_user.gus_novak.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user_group_membership" "gus_novak__risk_5_analysts" {
  user   = aws_iam_user.gus_novak.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user" "gus_sato" {
  name = "fenlum-1bmogc-gus.sato"
}

resource "aws_iam_user_login_profile" "gus_sato" {
  user                    = aws_iam_user.gus_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_sato__trading_6_devs" {
  user   = aws_iam_user.gus_sato.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user" "gus_silva" {
  name = "fenlum-1bmogc-gus.silva"
}

resource "aws_iam_user_login_profile" "gus_silva" {
  user                    = aws_iam_user.gus_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_silva__fraud_analysts" {
  user   = aws_iam_user.gus_silva.name
  groups = [aws_iam_group.fraud_analysts.name]
}

resource "aws_iam_user_policy_attachment" "gus_silva__base_readonly" {
  user       = aws_iam_user.gus_silva.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "gus_singh" {
  name = "fenlum-1bmogc-gus.singh"
}

resource "aws_iam_user_login_profile" "gus_singh" {
  user                    = aws_iam_user.gus_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_singh__risk_5_devs" {
  user   = aws_iam_user.gus_singh.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user" "gus_smith" {
  name = "fenlum-1bmogc-gus.smith"
}

resource "aws_iam_user_login_profile" "gus_smith" {
  user                    = aws_iam_user.gus_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_smith__treasury_devs" {
  user   = aws_iam_user.gus_smith.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "gus_tanaka" {
  name = "fenlum-1bmogc-gus.tanaka"
}

resource "aws_iam_user_login_profile" "gus_tanaka" {
  user                    = aws_iam_user.gus_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_tanaka__risk_analysts" {
  user   = aws_iam_user.gus_tanaka.name
  groups = [aws_iam_group.risk_analysts.name]
}

resource "aws_iam_user" "gus_wong" {
  name = "fenlum-1bmogc-gus.wong"
}

resource "aws_iam_user_login_profile" "gus_wong" {
  user                    = aws_iam_user.gus_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "gus_wong__fraud_5_devs" {
  user   = aws_iam_user.gus_wong.name
  groups = [aws_iam_group.fraud_5_devs.name]
}

resource "aws_iam_user" "hana_brown" {
  name = "fenlum-1bmogc-hana.brown"
}

resource "aws_iam_user_login_profile" "hana_brown" {
  user                    = aws_iam_user.hana_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_brown__mobile_devs" {
  user   = aws_iam_user.hana_brown.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "hana_brown6679" {
  name = "fenlum-1bmogc-hana.brown6679"
}

resource "aws_iam_user_login_profile" "hana_brown6679" {
  user                    = aws_iam_user.hana_brown6679.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_brown6679__reporting_3_analysts" {
  user   = aws_iam_user.hana_brown6679.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "hana_chen" {
  name = "fenlum-1bmogc-hana.chen"
}

resource "aws_iam_user_login_profile" "hana_chen" {
  user                    = aws_iam_user.hana_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_chen__platform_analysts" {
  user   = aws_iam_user.hana_chen.name
  groups = [aws_iam_group.platform_analysts.name]
}

resource "aws_iam_user" "hana_chen367" {
  name = "fenlum-1bmogc-hana.chen367"
}

resource "aws_iam_user_login_profile" "hana_chen367" {
  user                    = aws_iam_user.hana_chen367.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_chen367__reporting_devs" {
  user   = aws_iam_user.hana_chen367.name
  groups = [aws_iam_group.reporting_devs.name]
}

resource "aws_iam_user_group_membership" "hana_chen367__payments_5_analysts" {
  user   = aws_iam_user.hana_chen367.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user" "hana_chen9097" {
  name = "fenlum-1bmogc-hana.chen9097"
}

resource "aws_iam_user_group_membership" "hana_chen9097__platform_6_devs" {
  user   = aws_iam_user.hana_chen9097.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "hana_cohen" {
  name = "fenlum-1bmogc-hana.cohen"
}

resource "aws_iam_user_group_membership" "hana_cohen__platform_2_devs" {
  user   = aws_iam_user.hana_cohen.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user" "hana_cohen9574" {
  name = "fenlum-1bmogc-hana.cohen9574"
}

resource "aws_iam_user_group_membership" "hana_cohen9574__kyc_devs" {
  user   = aws_iam_user.hana_cohen9574.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user" "hana_davis" {
  name = "fenlum-1bmogc-hana.davis"
}

resource "aws_iam_user_login_profile" "hana_davis" {
  user                    = aws_iam_user.hana_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_davis__risk_7_devs" {
  user   = aws_iam_user.hana_davis.name
  groups = [aws_iam_group.risk_7_devs.name]
}

resource "aws_iam_user" "hana_ivanov" {
  name = "fenlum-1bmogc-hana.ivanov"
}

resource "aws_iam_user_login_profile" "hana_ivanov" {
  user                    = aws_iam_user.hana_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_ivanov__data_eng_4_devs" {
  user   = aws_iam_user.hana_ivanov.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user" "hana_khan" {
  name = "fenlum-1bmogc-hana.khan"
}

resource "aws_iam_user_login_profile" "hana_khan" {
  user                    = aws_iam_user.hana_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_khan__platform_2_devs" {
  user   = aws_iam_user.hana_khan.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user" "hana_khan2078" {
  name = "fenlum-1bmogc-hana.khan2078"
}

resource "aws_iam_user_login_profile" "hana_khan2078" {
  user                    = aws_iam_user.hana_khan2078.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_khan2078__lending_2_devs" {
  user   = aws_iam_user.hana_khan2078.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user" "hana_khan8004" {
  name = "fenlum-1bmogc-hana.khan8004"
}

resource "aws_iam_user_login_profile" "hana_khan8004" {
  user                    = aws_iam_user.hana_khan8004.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_khan8004__kyc_6_devs" {
  user   = aws_iam_user.hana_khan8004.name
  groups = [aws_iam_group.kyc_6_devs.name]
}

resource "aws_iam_user" "hana_kim" {
  name = "fenlum-1bmogc-hana.kim"
}

resource "aws_iam_user_login_profile" "hana_kim" {
  user                    = aws_iam_user.hana_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_kim__mobile_5_devs" {
  user   = aws_iam_user.hana_kim.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user_group_membership" "hana_kim__mobile_4_analysts" {
  user   = aws_iam_user.hana_kim.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "hana_larsen" {
  name = "fenlum-1bmogc-hana.larsen"
}

resource "aws_iam_user_login_profile" "hana_larsen" {
  user                    = aws_iam_user.hana_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_larsen__lending_2_devs" {
  user   = aws_iam_user.hana_larsen.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user_group_membership" "hana_larsen__mobile_6_analysts" {
  user   = aws_iam_user.hana_larsen.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "hana_lopez" {
  name = "fenlum-1bmogc-hana.lopez"
}

resource "aws_iam_user_login_profile" "hana_lopez" {
  user                    = aws_iam_user.hana_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_lopez__payments_devs" {
  user   = aws_iam_user.hana_lopez.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user" "hana_mehta" {
  name = "fenlum-1bmogc-hana.mehta"
}

resource "aws_iam_user_login_profile" "hana_mehta" {
  user                    = aws_iam_user.hana_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_mehta__treasury_7_devs" {
  user   = aws_iam_user.hana_mehta.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "hana_miller" {
  name = "fenlum-1bmogc-hana.miller"
}

resource "aws_iam_user_login_profile" "hana_miller" {
  user                    = aws_iam_user.hana_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_miller__treasury_4_devs" {
  user   = aws_iam_user.hana_miller.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user" "hana_okafor" {
  name = "fenlum-1bmogc-hana.okafor"
}

resource "aws_iam_user_login_profile" "hana_okafor" {
  user                    = aws_iam_user.hana_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_okafor__data_eng_devs" {
  user   = aws_iam_user.hana_okafor.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user_group_membership" "hana_okafor__risk_3_analysts" {
  user   = aws_iam_user.hana_okafor.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user" "hana_patel" {
  name = "fenlum-1bmogc-hana.patel"
}

resource "aws_iam_user_login_profile" "hana_patel" {
  user                    = aws_iam_user.hana_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_patel__ledger_4_analysts" {
  user   = aws_iam_user.hana_patel.name
  groups = [aws_iam_group.ledger_4_analysts.name]
}

resource "aws_iam_user" "hana_patel4150" {
  name = "fenlum-1bmogc-hana.patel4150"
}

resource "aws_iam_user_login_profile" "hana_patel4150" {
  user                    = aws_iam_user.hana_patel4150.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_patel4150__mobile_5_devs" {
  user   = aws_iam_user.hana_patel4150.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user" "hana_silva" {
  name = "fenlum-1bmogc-hana.silva"
}

resource "aws_iam_user_login_profile" "hana_silva" {
  user                    = aws_iam_user.hana_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_silva__treasury_devs" {
  user   = aws_iam_user.hana_silva.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user_policy_attachment" "hana_silva__base_readonly" {
  user       = aws_iam_user.hana_silva.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "hana_silva3972" {
  name = "fenlum-1bmogc-hana.silva3972"
}

resource "aws_iam_user_login_profile" "hana_silva3972" {
  user                    = aws_iam_user.hana_silva3972.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_silva3972__reporting_analysts" {
  user   = aws_iam_user.hana_silva3972.name
  groups = [aws_iam_group.reporting_analysts.name]
}

resource "aws_iam_user" "hana_silva8041" {
  name = "fenlum-1bmogc-hana.silva8041"
}

resource "aws_iam_user_login_profile" "hana_silva8041" {
  user                    = aws_iam_user.hana_silva8041.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_silva8041__data_eng_5_devs" {
  user   = aws_iam_user.hana_silva8041.name
  groups = [aws_iam_group.data_eng_5_devs.name]
}

resource "aws_iam_user" "hana_tanaka" {
  name = "fenlum-1bmogc-hana.tanaka"
}

resource "aws_iam_user_login_profile" "hana_tanaka" {
  user                    = aws_iam_user.hana_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_tanaka__reporting_3_devs" {
  user   = aws_iam_user.hana_tanaka.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user" "hana_wong" {
  name = "fenlum-1bmogc-hana.wong"
}

resource "aws_iam_user_login_profile" "hana_wong" {
  user                    = aws_iam_user.hana_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_wong__ledger_7_devs" {
  user   = aws_iam_user.hana_wong.name
  groups = [aws_iam_group.ledger_7_devs.name]
}

resource "aws_iam_user" "heidi_brown" {
  name = "fenlum-1bmogc-heidi.brown"
}

resource "aws_iam_user_login_profile" "heidi_brown" {
  user                    = aws_iam_user.heidi_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_brown__fraud_2_devs" {
  user   = aws_iam_user.heidi_brown.name
  groups = [aws_iam_group.fraud_2_devs.name]
}

resource "aws_iam_user" "heidi_davis" {
  name = "fenlum-1bmogc-heidi.davis"
}

resource "aws_iam_user_login_profile" "heidi_davis" {
  user                    = aws_iam_user.heidi_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_davis__fraud_devs" {
  user   = aws_iam_user.heidi_davis.name
  groups = [aws_iam_group.fraud_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_davis__data_eng_6_analysts" {
  user   = aws_iam_user.heidi_davis.name
  groups = [aws_iam_group.data_eng_6_analysts.name]
}

resource "aws_iam_user" "heidi_davis6650" {
  name = "fenlum-1bmogc-heidi.davis6650"
}

resource "aws_iam_user_login_profile" "heidi_davis6650" {
  user                    = aws_iam_user.heidi_davis6650.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_davis6650__treasury_analysts" {
  user   = aws_iam_user.heidi_davis6650.name
  groups = [aws_iam_group.treasury_analysts.name]
}

resource "aws_iam_user" "heidi_davis9150" {
  name = "fenlum-1bmogc-heidi.davis9150"
}

resource "aws_iam_user_login_profile" "heidi_davis9150" {
  user                    = aws_iam_user.heidi_davis9150.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_davis9150__payments_3_devs" {
  user   = aws_iam_user.heidi_davis9150.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "heidi_garcia" {
  name = "fenlum-1bmogc-heidi.garcia"
}

resource "aws_iam_user_login_profile" "heidi_garcia" {
  user                    = aws_iam_user.heidi_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_garcia__lending_5_devs" {
  user   = aws_iam_user.heidi_garcia.name
  groups = [aws_iam_group.lending_5_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_garcia__reporting_analysts" {
  user   = aws_iam_user.heidi_garcia.name
  groups = [aws_iam_group.reporting_analysts.name]
}

resource "aws_iam_user" "heidi_gupta" {
  name = "fenlum-1bmogc-heidi.gupta"
}

resource "aws_iam_user_login_profile" "heidi_gupta" {
  user                    = aws_iam_user.heidi_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_gupta__mobile_2_devs" {
  user   = aws_iam_user.heidi_gupta.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "heidi_ivanov" {
  name = "fenlum-1bmogc-heidi.ivanov"
}

resource "aws_iam_user_login_profile" "heidi_ivanov" {
  user                    = aws_iam_user.heidi_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_ivanov__payments_4_analysts" {
  user   = aws_iam_user.heidi_ivanov.name
  groups = [aws_iam_group.payments_4_analysts.name]
}

resource "aws_iam_user" "heidi_ivanov7844" {
  name = "fenlum-1bmogc-heidi.ivanov7844"
}

resource "aws_iam_user_login_profile" "heidi_ivanov7844" {
  user                    = aws_iam_user.heidi_ivanov7844.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_ivanov7844__payments_6_devs" {
  user   = aws_iam_user.heidi_ivanov7844.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "heidi_khan" {
  name = "fenlum-1bmogc-heidi.khan"
}

resource "aws_iam_user_login_profile" "heidi_khan" {
  user                    = aws_iam_user.heidi_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_khan__reporting_6_analysts" {
  user   = aws_iam_user.heidi_khan.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user" "heidi_kim" {
  name = "fenlum-1bmogc-heidi.kim"
}

resource "aws_iam_user_login_profile" "heidi_kim" {
  user                    = aws_iam_user.heidi_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_kim__risk_5_devs" {
  user   = aws_iam_user.heidi_kim.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_kim__trading_5_analysts" {
  user   = aws_iam_user.heidi_kim.name
  groups = [aws_iam_group.trading_5_analysts.name]
}

resource "aws_iam_user" "heidi_larsen" {
  name = "fenlum-1bmogc-heidi.larsen"
}

resource "aws_iam_user_login_profile" "heidi_larsen" {
  user                    = aws_iam_user.heidi_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_larsen__reporting_4_analysts" {
  user   = aws_iam_user.heidi_larsen.name
  groups = [aws_iam_group.reporting_4_analysts.name]
}

resource "aws_iam_user_group_membership" "heidi_larsen__treasury_2_analysts" {
  user   = aws_iam_user.heidi_larsen.name
  groups = [aws_iam_group.treasury_2_analysts.name]
}

resource "aws_iam_user" "heidi_larsen7206" {
  name = "fenlum-1bmogc-heidi.larsen7206"
}

resource "aws_iam_user_login_profile" "heidi_larsen7206" {
  user                    = aws_iam_user.heidi_larsen7206.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_larsen7206__platform_6_devs" {
  user   = aws_iam_user.heidi_larsen7206.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "heidi_lopez" {
  name = "fenlum-1bmogc-heidi.lopez"
}

resource "aws_iam_user_login_profile" "heidi_lopez" {
  user                    = aws_iam_user.heidi_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_lopez__fraud_4_devs" {
  user   = aws_iam_user.heidi_lopez.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user" "heidi_miller" {
  name = "fenlum-1bmogc-heidi.miller"
}

resource "aws_iam_user_login_profile" "heidi_miller" {
  user                    = aws_iam_user.heidi_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_miller__lending_6_devs" {
  user   = aws_iam_user.heidi_miller.name
  groups = [aws_iam_group.lending_6_devs.name]
}

resource "aws_iam_user" "heidi_nguyen" {
  name = "fenlum-1bmogc-heidi.nguyen"
}

resource "aws_iam_user_login_profile" "heidi_nguyen" {
  user                    = aws_iam_user.heidi_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_nguyen__mobile_4_devs" {
  user   = aws_iam_user.heidi_nguyen.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "heidi_nguyen6915" {
  name = "fenlum-1bmogc-heidi.nguyen6915"
}

resource "aws_iam_user_group_membership" "heidi_nguyen6915__trading_3_devs" {
  user   = aws_iam_user.heidi_nguyen6915.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user" "heidi_okafor" {
  name = "fenlum-1bmogc-heidi.okafor"
}

resource "aws_iam_user_login_profile" "heidi_okafor" {
  user                    = aws_iam_user.heidi_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_okafor__kyc_7_devs" {
  user   = aws_iam_user.heidi_okafor.name
  groups = [aws_iam_group.kyc_7_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_okafor__mobile_5_analysts" {
  user   = aws_iam_user.heidi_okafor.name
  groups = [aws_iam_group.mobile_5_analysts.name]
}

resource "aws_iam_user" "heidi_singh" {
  name = "fenlum-1bmogc-heidi.singh"
}

resource "aws_iam_user_group_membership" "heidi_singh__ledger_3_devs" {
  user   = aws_iam_user.heidi_singh.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user_group_membership" "heidi_singh__reporting_2_analysts" {
  user   = aws_iam_user.heidi_singh.name
  groups = [aws_iam_group.reporting_2_analysts.name]
}

resource "aws_iam_user" "heidi_smith" {
  name = "fenlum-1bmogc-heidi.smith"
}

resource "aws_iam_user_login_profile" "heidi_smith" {
  user                    = aws_iam_user.heidi_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_smith__ledger_3_analysts" {
  user   = aws_iam_user.heidi_smith.name
  groups = [aws_iam_group.ledger_3_analysts.name]
}

resource "aws_iam_user" "heidi_wong" {
  name = "fenlum-1bmogc-heidi.wong"
}

resource "aws_iam_user_login_profile" "heidi_wong" {
  user                    = aws_iam_user.heidi_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_wong__kyc_devs" {
  user   = aws_iam_user.heidi_wong.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user" "heidi_wong8431" {
  name = "fenlum-1bmogc-heidi.wong8431"
}

resource "aws_iam_user_login_profile" "heidi_wong8431" {
  user                    = aws_iam_user.heidi_wong8431.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "heidi_wong8431__reporting_2_devs" {
  user   = aws_iam_user.heidi_wong8431.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "ian_ali" {
  name = "fenlum-1bmogc-ian.ali"
}

resource "aws_iam_user_login_profile" "ian_ali" {
  user                    = aws_iam_user.ian_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_ali__risk_5_devs" {
  user   = aws_iam_user.ian_ali.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user" "ian_chen" {
  name = "fenlum-1bmogc-ian.chen"
}

resource "aws_iam_user_login_profile" "ian_chen" {
  user                    = aws_iam_user.ian_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_chen__treasury_5_analysts" {
  user   = aws_iam_user.ian_chen.name
  groups = [aws_iam_group.treasury_5_analysts.name]
}

resource "aws_iam_user_group_membership" "ian_chen__payments_3_analysts" {
  user   = aws_iam_user.ian_chen.name
  groups = [aws_iam_group.payments_3_analysts.name]
}

resource "aws_iam_user" "ian_gupta" {
  name = "fenlum-1bmogc-ian.gupta"
}

resource "aws_iam_user_login_profile" "ian_gupta" {
  user                    = aws_iam_user.ian_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_gupta__mobile_6_analysts" {
  user   = aws_iam_user.ian_gupta.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "ian_gupta3507" {
  name = "fenlum-1bmogc-ian.gupta3507"
}

resource "aws_iam_user_login_profile" "ian_gupta3507" {
  user                    = aws_iam_user.ian_gupta3507.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_gupta3507__lending_2_devs" {
  user   = aws_iam_user.ian_gupta3507.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user_group_membership" "ian_gupta3507__lending_6_analysts" {
  user   = aws_iam_user.ian_gupta3507.name
  groups = [aws_iam_group.lending_6_analysts.name]
}

resource "aws_iam_user" "ian_haddad" {
  name = "fenlum-1bmogc-ian.haddad"
}

resource "aws_iam_user_group_membership" "ian_haddad__platform_2_devs" {
  user   = aws_iam_user.ian_haddad.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "ian_haddad__base_readonly" {
  user       = aws_iam_user.ian_haddad.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ian_haddad2400" {
  name = "fenlum-1bmogc-ian.haddad2400"
}

resource "aws_iam_user_login_profile" "ian_haddad2400" {
  user                    = aws_iam_user.ian_haddad2400.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_haddad2400__trading_4_devs" {
  user   = aws_iam_user.ian_haddad2400.name
  groups = [aws_iam_group.trading_4_devs.name]
}

resource "aws_iam_user" "ian_jones" {
  name = "fenlum-1bmogc-ian.jones"
}

resource "aws_iam_user_login_profile" "ian_jones" {
  user                    = aws_iam_user.ian_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_jones__kyc_5_devs" {
  user   = aws_iam_user.ian_jones.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "ian_jones1752" {
  name = "fenlum-1bmogc-ian.jones1752"
}

resource "aws_iam_user_login_profile" "ian_jones1752" {
  user                    = aws_iam_user.ian_jones1752.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_jones1752__kyc_devs" {
  user   = aws_iam_user.ian_jones1752.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user" "ian_kim" {
  name = "fenlum-1bmogc-ian.kim"
}

resource "aws_iam_user_login_profile" "ian_kim" {
  user                    = aws_iam_user.ian_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_kim__reporting_5_devs" {
  user   = aws_iam_user.ian_kim.name
  groups = [aws_iam_group.reporting_5_devs.name]
}

resource "aws_iam_user" "ian_lopez" {
  name = "fenlum-1bmogc-ian.lopez"
}

resource "aws_iam_user_login_profile" "ian_lopez" {
  user                    = aws_iam_user.ian_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_lopez__data_eng_4_devs" {
  user   = aws_iam_user.ian_lopez.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user" "ian_muller" {
  name = "fenlum-1bmogc-ian.muller"
}

resource "aws_iam_user_group_membership" "ian_muller__data_eng_6_devs" {
  user   = aws_iam_user.ian_muller.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user" "ian_muller9564" {
  name = "fenlum-1bmogc-ian.muller9564"
}

resource "aws_iam_user_login_profile" "ian_muller9564" {
  user                    = aws_iam_user.ian_muller9564.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_muller9564__lending_5_devs" {
  user   = aws_iam_user.ian_muller9564.name
  groups = [aws_iam_group.lending_5_devs.name]
}

resource "aws_iam_user" "ian_nguyen" {
  name = "fenlum-1bmogc-ian.nguyen"
}

resource "aws_iam_user_login_profile" "ian_nguyen" {
  user                    = aws_iam_user.ian_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_nguyen__trading_7_devs" {
  user   = aws_iam_user.ian_nguyen.name
  groups = [aws_iam_group.trading_7_devs.name]
}

resource "aws_iam_user" "ian_novak" {
  name = "fenlum-1bmogc-ian.novak"
}

resource "aws_iam_user_group_membership" "ian_novak__ledger_5_devs" {
  user   = aws_iam_user.ian_novak.name
  groups = [aws_iam_group.ledger_5_devs.name]
}

resource "aws_iam_user_group_membership" "ian_novak__fraud_7_analysts" {
  user   = aws_iam_user.ian_novak.name
  groups = [aws_iam_group.fraud_7_analysts.name]
}

resource "aws_iam_user" "ian_okafor" {
  name = "fenlum-1bmogc-ian.okafor"
}

resource "aws_iam_user_login_profile" "ian_okafor" {
  user                    = aws_iam_user.ian_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_okafor__treasury_4_devs" {
  user   = aws_iam_user.ian_okafor.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user_group_membership" "ian_okafor__kyc_5_analysts" {
  user   = aws_iam_user.ian_okafor.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "ian_patel" {
  name = "fenlum-1bmogc-ian.patel"
}

resource "aws_iam_user_group_membership" "ian_patel__ledger_devs" {
  user   = aws_iam_user.ian_patel.name
  groups = [aws_iam_group.ledger_devs.name]
}

resource "aws_iam_user" "ian_reddy" {
  name = "fenlum-1bmogc-ian.reddy"
}

resource "aws_iam_user_login_profile" "ian_reddy" {
  user                    = aws_iam_user.ian_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_reddy__trading_7_analysts" {
  user   = aws_iam_user.ian_reddy.name
  groups = [aws_iam_group.trading_7_analysts.name]
}

resource "aws_iam_user" "ian_reddy8252" {
  name = "fenlum-1bmogc-ian.reddy8252"
}

resource "aws_iam_user_login_profile" "ian_reddy8252" {
  user                    = aws_iam_user.ian_reddy8252.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_reddy8252__mobile_4_devs" {
  user   = aws_iam_user.ian_reddy8252.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "ian_rossi" {
  name = "fenlum-1bmogc-ian.rossi"
}

resource "aws_iam_user_group_membership" "ian_rossi__trading_5_devs" {
  user   = aws_iam_user.ian_rossi.name
  groups = [aws_iam_group.trading_5_devs.name]
}

resource "aws_iam_user" "ian_sato" {
  name = "fenlum-1bmogc-ian.sato"
}

resource "aws_iam_user_login_profile" "ian_sato" {
  user                    = aws_iam_user.ian_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_sato__data_eng_4_devs" {
  user   = aws_iam_user.ian_sato.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "ian_sato__base_readonly" {
  user       = aws_iam_user.ian_sato.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ian_singh" {
  name = "fenlum-1bmogc-ian.singh"
}

resource "aws_iam_user_login_profile" "ian_singh" {
  user                    = aws_iam_user.ian_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_singh__platform_6_analysts" {
  user   = aws_iam_user.ian_singh.name
  groups = [aws_iam_group.platform_6_analysts.name]
}

resource "aws_iam_user" "ian_singh9241" {
  name = "fenlum-1bmogc-ian.singh9241"
}

resource "aws_iam_user_login_profile" "ian_singh9241" {
  user                    = aws_iam_user.ian_singh9241.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ian_singh9241__fraud_3_devs" {
  user   = aws_iam_user.ian_singh9241.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user" "ian_wong" {
  name = "fenlum-1bmogc-ian.wong"
}

resource "aws_iam_user_group_membership" "ian_wong__platform_2_analysts" {
  user   = aws_iam_user.ian_wong.name
  groups = [aws_iam_group.platform_2_analysts.name]
}

resource "aws_iam_user" "ivan_brown" {
  name = "fenlum-1bmogc-ivan.brown"
}

resource "aws_iam_user_login_profile" "ivan_brown" {
  user                    = aws_iam_user.ivan_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_brown__payments_6_devs" {
  user   = aws_iam_user.ivan_brown.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "ivan_brown8696" {
  name = "fenlum-1bmogc-ivan.brown8696"
}

resource "aws_iam_user_login_profile" "ivan_brown8696" {
  user                    = aws_iam_user.ivan_brown8696.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_brown8696__lending_7_devs" {
  user   = aws_iam_user.ivan_brown8696.name
  groups = [aws_iam_group.lending_7_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_brown8696__risk_4_analysts" {
  user   = aws_iam_user.ivan_brown8696.name
  groups = [aws_iam_group.risk_4_analysts.name]
}

resource "aws_iam_user" "ivan_chen" {
  name = "fenlum-1bmogc-ivan.chen"
}

resource "aws_iam_user_login_profile" "ivan_chen" {
  user                    = aws_iam_user.ivan_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_chen__ledger_3_devs" {
  user   = aws_iam_user.ivan_chen.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_chen__fraud_2_analysts" {
  user   = aws_iam_user.ivan_chen.name
  groups = [aws_iam_group.fraud_2_analysts.name]
}

resource "aws_iam_user" "ivan_davis" {
  name = "fenlum-1bmogc-ivan.davis"
}

resource "aws_iam_user_login_profile" "ivan_davis" {
  user                    = aws_iam_user.ivan_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_davis__reporting_4_devs" {
  user   = aws_iam_user.ivan_davis.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "ivan_davis__base_readonly" {
  user       = aws_iam_user.ivan_davis.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ivan_dubois" {
  name = "fenlum-1bmogc-ivan.dubois"
}

resource "aws_iam_user_login_profile" "ivan_dubois" {
  user                    = aws_iam_user.ivan_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_dubois__fraud_4_devs" {
  user   = aws_iam_user.ivan_dubois.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "ivan_dubois__base_readonly" {
  user       = aws_iam_user.ivan_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ivan_ivanov" {
  name = "fenlum-1bmogc-ivan.ivanov"
}

resource "aws_iam_user_login_profile" "ivan_ivanov" {
  user                    = aws_iam_user.ivan_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_ivanov__reporting_2_devs" {
  user   = aws_iam_user.ivan_ivanov.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "ivan_khan" {
  name = "fenlum-1bmogc-ivan.khan"
}

resource "aws_iam_user_login_profile" "ivan_khan" {
  user                    = aws_iam_user.ivan_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_khan__platform_4_devs" {
  user   = aws_iam_user.ivan_khan.name
  groups = [aws_iam_group.platform_4_devs.name]
}

resource "aws_iam_user" "ivan_lopez" {
  name = "fenlum-1bmogc-ivan.lopez"
}

resource "aws_iam_user_login_profile" "ivan_lopez" {
  user                    = aws_iam_user.ivan_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_lopez__data_eng_2_devs" {
  user   = aws_iam_user.ivan_lopez.name
  groups = [aws_iam_group.data_eng_2_devs.name]
}

resource "aws_iam_user" "ivan_lopez8942" {
  name = "fenlum-1bmogc-ivan.lopez8942"
}

resource "aws_iam_user_login_profile" "ivan_lopez8942" {
  user                    = aws_iam_user.ivan_lopez8942.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_lopez8942__risk_devs" {
  user   = aws_iam_user.ivan_lopez8942.name
  groups = [aws_iam_group.risk_devs.name]
}

resource "aws_iam_user" "ivan_mehta" {
  name = "fenlum-1bmogc-ivan.mehta"
}

resource "aws_iam_user_login_profile" "ivan_mehta" {
  user                    = aws_iam_user.ivan_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_mehta__mobile_4_devs" {
  user   = aws_iam_user.ivan_mehta.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "ivan_mehta__base_readonly" {
  user       = aws_iam_user.ivan_mehta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "ivan_mehta8749" {
  name = "fenlum-1bmogc-ivan.mehta8749"
}

resource "aws_iam_user_group_membership" "ivan_mehta8749__kyc_5_devs" {
  user   = aws_iam_user.ivan_mehta8749.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "ivan_miller" {
  name = "fenlum-1bmogc-ivan.miller"
}

resource "aws_iam_user_login_profile" "ivan_miller" {
  user                    = aws_iam_user.ivan_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_miller__fraud_5_devs" {
  user   = aws_iam_user.ivan_miller.name
  groups = [aws_iam_group.fraud_5_devs.name]
}

resource "aws_iam_user" "ivan_miller1631" {
  name = "fenlum-1bmogc-ivan.miller1631"
}

resource "aws_iam_user_login_profile" "ivan_miller1631" {
  user                    = aws_iam_user.ivan_miller1631.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_miller1631__risk_2_devs" {
  user   = aws_iam_user.ivan_miller1631.name
  groups = [aws_iam_group.risk_2_devs.name]
}

resource "aws_iam_user" "ivan_miller863" {
  name = "fenlum-1bmogc-ivan.miller863"
}

resource "aws_iam_user_login_profile" "ivan_miller863" {
  user                    = aws_iam_user.ivan_miller863.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_miller863__mobile_4_devs" {
  user   = aws_iam_user.ivan_miller863.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_miller863__treasury_7_analysts" {
  user   = aws_iam_user.ivan_miller863.name
  groups = [aws_iam_group.treasury_7_analysts.name]
}

resource "aws_iam_user" "ivan_muller" {
  name = "fenlum-1bmogc-ivan.muller"
}

resource "aws_iam_user_login_profile" "ivan_muller" {
  user                    = aws_iam_user.ivan_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_muller__data_eng_devs" {
  user   = aws_iam_user.ivan_muller.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user" "ivan_nguyen" {
  name = "fenlum-1bmogc-ivan.nguyen"
}

resource "aws_iam_user_login_profile" "ivan_nguyen" {
  user                    = aws_iam_user.ivan_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_nguyen__kyc_5_analysts" {
  user   = aws_iam_user.ivan_nguyen.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "ivan_nguyen4370" {
  name = "fenlum-1bmogc-ivan.nguyen4370"
}

resource "aws_iam_user_login_profile" "ivan_nguyen4370" {
  user                    = aws_iam_user.ivan_nguyen4370.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_nguyen4370__fraud_analysts" {
  user   = aws_iam_user.ivan_nguyen4370.name
  groups = [aws_iam_group.fraud_analysts.name]
}

resource "aws_iam_user_group_membership" "ivan_nguyen4370__treasury_5_analysts" {
  user   = aws_iam_user.ivan_nguyen4370.name
  groups = [aws_iam_group.treasury_5_analysts.name]
}

resource "aws_iam_user" "ivan_rossi" {
  name = "fenlum-1bmogc-ivan.rossi"
}

resource "aws_iam_user_login_profile" "ivan_rossi" {
  user                    = aws_iam_user.ivan_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_rossi__mobile_3_devs" {
  user   = aws_iam_user.ivan_rossi.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "ivan_sato" {
  name = "fenlum-1bmogc-ivan.sato"
}

resource "aws_iam_user_login_profile" "ivan_sato" {
  user                    = aws_iam_user.ivan_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_sato__ledger_3_devs" {
  user   = aws_iam_user.ivan_sato.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user" "ivan_sato518" {
  name = "fenlum-1bmogc-ivan.sato518"
}

resource "aws_iam_user_group_membership" "ivan_sato518__treasury_5_devs" {
  user   = aws_iam_user.ivan_sato518.name
  groups = [aws_iam_group.treasury_5_devs.name]
}

resource "aws_iam_user_group_membership" "ivan_sato518__risk_7_analysts" {
  user   = aws_iam_user.ivan_sato518.name
  groups = [aws_iam_group.risk_7_analysts.name]
}

resource "aws_iam_user" "ivan_singh" {
  name = "fenlum-1bmogc-ivan.singh"
}

resource "aws_iam_user_login_profile" "ivan_singh" {
  user                    = aws_iam_user.ivan_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_singh__kyc_4_analysts" {
  user   = aws_iam_user.ivan_singh.name
  groups = [aws_iam_group.kyc_4_analysts.name]
}

resource "aws_iam_user" "ivan_tanaka" {
  name = "fenlum-1bmogc-ivan.tanaka"
}

resource "aws_iam_user_login_profile" "ivan_tanaka" {
  user                    = aws_iam_user.ivan_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_tanaka__fraud_2_devs" {
  user   = aws_iam_user.ivan_tanaka.name
  groups = [aws_iam_group.fraud_2_devs.name]
}

resource "aws_iam_user" "ivan_wong" {
  name = "fenlum-1bmogc-ivan.wong"
}

resource "aws_iam_user_login_profile" "ivan_wong" {
  user                    = aws_iam_user.ivan_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_wong__risk_5_analysts" {
  user   = aws_iam_user.ivan_wong.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user" "ivan_wong4363" {
  name = "fenlum-1bmogc-ivan.wong4363"
}

resource "aws_iam_user_login_profile" "ivan_wong4363" {
  user                    = aws_iam_user.ivan_wong4363.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ivan_wong4363__risk_3_devs" {
  user   = aws_iam_user.ivan_wong4363.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user" "judy_chen" {
  name = "fenlum-1bmogc-judy.chen"
}

resource "aws_iam_user_group_membership" "judy_chen__ledger_6_devs" {
  user   = aws_iam_user.judy_chen.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user" "judy_chen979" {
  name = "fenlum-1bmogc-judy.chen979"
}

resource "aws_iam_user_login_profile" "judy_chen979" {
  user                    = aws_iam_user.judy_chen979.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_chen979__ledger_analysts" {
  user   = aws_iam_user.judy_chen979.name
  groups = [aws_iam_group.ledger_analysts.name]
}

resource "aws_iam_user" "judy_davis" {
  name = "fenlum-1bmogc-judy.davis"
}

resource "aws_iam_user_login_profile" "judy_davis" {
  user                    = aws_iam_user.judy_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_davis__lending_3_analysts" {
  user   = aws_iam_user.judy_davis.name
  groups = [aws_iam_group.lending_3_analysts.name]
}

resource "aws_iam_user" "judy_garcia" {
  name = "fenlum-1bmogc-judy.garcia"
}

resource "aws_iam_user_login_profile" "judy_garcia" {
  user                    = aws_iam_user.judy_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_garcia__platform_devs" {
  user   = aws_iam_user.judy_garcia.name
  groups = [aws_iam_group.platform_devs.name]
}

resource "aws_iam_user" "judy_gupta" {
  name = "fenlum-1bmogc-judy.gupta"
}

resource "aws_iam_user_login_profile" "judy_gupta" {
  user                    = aws_iam_user.judy_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_gupta__kyc_4_devs" {
  user   = aws_iam_user.judy_gupta.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user_group_membership" "judy_gupta__kyc_4_analysts" {
  user   = aws_iam_user.judy_gupta.name
  groups = [aws_iam_group.kyc_4_analysts.name]
}

resource "aws_iam_user" "judy_gupta4124" {
  name = "fenlum-1bmogc-judy.gupta4124"
}

resource "aws_iam_user_login_profile" "judy_gupta4124" {
  user                    = aws_iam_user.judy_gupta4124.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_gupta4124__lending_4_devs" {
  user   = aws_iam_user.judy_gupta4124.name
  groups = [aws_iam_group.lending_4_devs.name]
}

resource "aws_iam_user" "judy_ivanov" {
  name = "fenlum-1bmogc-judy.ivanov"
}

resource "aws_iam_user_login_profile" "judy_ivanov" {
  user                    = aws_iam_user.judy_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_ivanov__lending_analysts" {
  user   = aws_iam_user.judy_ivanov.name
  groups = [aws_iam_group.lending_analysts.name]
}

resource "aws_iam_user" "judy_ivanov9689" {
  name = "fenlum-1bmogc-judy.ivanov9689"
}

resource "aws_iam_user_login_profile" "judy_ivanov9689" {
  user                    = aws_iam_user.judy_ivanov9689.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_ivanov9689__data_eng_devs" {
  user   = aws_iam_user.judy_ivanov9689.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user" "judy_jones" {
  name = "fenlum-1bmogc-judy.jones"
}

resource "aws_iam_user_login_profile" "judy_jones" {
  user                    = aws_iam_user.judy_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_jones__reporting_2_devs" {
  user   = aws_iam_user.judy_jones.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "judy_khan" {
  name = "fenlum-1bmogc-judy.khan"
}

resource "aws_iam_user_login_profile" "judy_khan" {
  user                    = aws_iam_user.judy_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_khan__data_eng_3_devs" {
  user   = aws_iam_user.judy_khan.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user" "judy_kim" {
  name = "fenlum-1bmogc-judy.kim"
}

resource "aws_iam_user_login_profile" "judy_kim" {
  user                    = aws_iam_user.judy_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_kim__ledger_4_devs" {
  user   = aws_iam_user.judy_kim.name
  groups = [aws_iam_group.ledger_4_devs.name]
}

resource "aws_iam_user" "judy_lopez" {
  name = "fenlum-1bmogc-judy.lopez"
}

resource "aws_iam_user_login_profile" "judy_lopez" {
  user                    = aws_iam_user.judy_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_lopez__treasury_devs" {
  user   = aws_iam_user.judy_lopez.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "judy_muller" {
  name = "fenlum-1bmogc-judy.muller"
}

resource "aws_iam_user_login_profile" "judy_muller" {
  user                    = aws_iam_user.judy_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_muller__mobile_2_devs" {
  user   = aws_iam_user.judy_muller.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "judy_okafor" {
  name = "fenlum-1bmogc-judy.okafor"
}

resource "aws_iam_user_login_profile" "judy_okafor" {
  user                    = aws_iam_user.judy_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_okafor__payments_2_devs" {
  user   = aws_iam_user.judy_okafor.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user" "judy_patel" {
  name = "fenlum-1bmogc-judy.patel"
}

resource "aws_iam_user_login_profile" "judy_patel" {
  user                    = aws_iam_user.judy_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_patel__data_eng_devs" {
  user   = aws_iam_user.judy_patel.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user" "judy_reddy" {
  name = "fenlum-1bmogc-judy.reddy"
}

resource "aws_iam_user_login_profile" "judy_reddy" {
  user                    = aws_iam_user.judy_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_reddy__ledger_7_devs" {
  user   = aws_iam_user.judy_reddy.name
  groups = [aws_iam_group.ledger_7_devs.name]
}

resource "aws_iam_user" "judy_reddy4210" {
  name = "fenlum-1bmogc-judy.reddy4210"
}

resource "aws_iam_user_login_profile" "judy_reddy4210" {
  user                    = aws_iam_user.judy_reddy4210.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_reddy4210__risk_4_analysts" {
  user   = aws_iam_user.judy_reddy4210.name
  groups = [aws_iam_group.risk_4_analysts.name]
}

resource "aws_iam_user" "judy_rossi" {
  name = "fenlum-1bmogc-judy.rossi"
}

resource "aws_iam_user_login_profile" "judy_rossi" {
  user                    = aws_iam_user.judy_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_rossi__risk_7_analysts" {
  user   = aws_iam_user.judy_rossi.name
  groups = [aws_iam_group.risk_7_analysts.name]
}

resource "aws_iam_user" "judy_rossi2217" {
  name = "fenlum-1bmogc-judy.rossi2217"
}

resource "aws_iam_user_login_profile" "judy_rossi2217" {
  user                    = aws_iam_user.judy_rossi2217.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_rossi2217__kyc_4_devs" {
  user   = aws_iam_user.judy_rossi2217.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user_group_membership" "judy_rossi2217__kyc_5_analysts" {
  user   = aws_iam_user.judy_rossi2217.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "judy_rossi4698" {
  name = "fenlum-1bmogc-judy.rossi4698"
}

resource "aws_iam_user_login_profile" "judy_rossi4698" {
  user                    = aws_iam_user.judy_rossi4698.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_rossi4698__data_eng_6_devs" {
  user   = aws_iam_user.judy_rossi4698.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user_group_membership" "judy_rossi4698__risk_6_analysts" {
  user   = aws_iam_user.judy_rossi4698.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user" "judy_sato" {
  name = "fenlum-1bmogc-judy.sato"
}

resource "aws_iam_user_login_profile" "judy_sato" {
  user                    = aws_iam_user.judy_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_sato__ledger_3_analysts" {
  user   = aws_iam_user.judy_sato.name
  groups = [aws_iam_group.ledger_3_analysts.name]
}

resource "aws_iam_user_group_membership" "judy_sato__trading_3_analysts" {
  user   = aws_iam_user.judy_sato.name
  groups = [aws_iam_group.trading_3_analysts.name]
}

resource "aws_iam_user" "judy_singh" {
  name = "fenlum-1bmogc-judy.singh"
}

resource "aws_iam_user_login_profile" "judy_singh" {
  user                    = aws_iam_user.judy_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_singh__data_eng_6_devs" {
  user   = aws_iam_user.judy_singh.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user" "judy_singh7063" {
  name = "fenlum-1bmogc-judy.singh7063"
}

resource "aws_iam_user_login_profile" "judy_singh7063" {
  user                    = aws_iam_user.judy_singh7063.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_singh7063__payments_6_devs" {
  user   = aws_iam_user.judy_singh7063.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "judy_smith" {
  name = "fenlum-1bmogc-judy.smith"
}

resource "aws_iam_user_login_profile" "judy_smith" {
  user                    = aws_iam_user.judy_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_smith__platform_6_devs" {
  user   = aws_iam_user.judy_smith.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "judy_smith__base_readonly" {
  user       = aws_iam_user.judy_smith.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "judy_tanaka" {
  name = "fenlum-1bmogc-judy.tanaka"
}

resource "aws_iam_user_login_profile" "judy_tanaka" {
  user                    = aws_iam_user.judy_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_tanaka__data_eng_5_devs" {
  user   = aws_iam_user.judy_tanaka.name
  groups = [aws_iam_group.data_eng_5_devs.name]
}

resource "aws_iam_user" "jun_ali" {
  name = "fenlum-1bmogc-jun.ali"
}

resource "aws_iam_user_login_profile" "jun_ali" {
  user                    = aws_iam_user.jun_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_ali__payments_5_devs" {
  user   = aws_iam_user.jun_ali.name
  groups = [aws_iam_group.payments_5_devs.name]
}

resource "aws_iam_user" "jun_ali8842" {
  name = "fenlum-1bmogc-jun.ali8842"
}

resource "aws_iam_user_login_profile" "jun_ali8842" {
  user                    = aws_iam_user.jun_ali8842.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_ali8842__mobile_2_devs" {
  user   = aws_iam_user.jun_ali8842.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "jun_ali9692" {
  name = "fenlum-1bmogc-jun.ali9692"
}

resource "aws_iam_user_login_profile" "jun_ali9692" {
  user                    = aws_iam_user.jun_ali9692.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_ali9692__reporting_3_analysts" {
  user   = aws_iam_user.jun_ali9692.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "jun_brown" {
  name = "fenlum-1bmogc-jun.brown"
}

resource "aws_iam_user_login_profile" "jun_brown" {
  user                    = aws_iam_user.jun_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_brown__reporting_6_analysts" {
  user   = aws_iam_user.jun_brown.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user" "jun_dubois" {
  name = "fenlum-1bmogc-jun.dubois"
}

resource "aws_iam_user_login_profile" "jun_dubois" {
  user                    = aws_iam_user.jun_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_dubois__ledger_6_devs" {
  user   = aws_iam_user.jun_dubois.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user" "jun_haddad" {
  name = "fenlum-1bmogc-jun.haddad"
}

resource "aws_iam_user_login_profile" "jun_haddad" {
  user                    = aws_iam_user.jun_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_haddad__trading_6_devs" {
  user   = aws_iam_user.jun_haddad.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user" "jun_haddad8419" {
  name = "fenlum-1bmogc-jun.haddad8419"
}

resource "aws_iam_user_login_profile" "jun_haddad8419" {
  user                    = aws_iam_user.jun_haddad8419.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_haddad8419__reporting_4_devs" {
  user   = aws_iam_user.jun_haddad8419.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user" "jun_ivanov" {
  name = "fenlum-1bmogc-jun.ivanov"
}

resource "aws_iam_user_login_profile" "jun_ivanov" {
  user                    = aws_iam_user.jun_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_ivanov__kyc_7_devs" {
  user   = aws_iam_user.jun_ivanov.name
  groups = [aws_iam_group.kyc_7_devs.name]
}

resource "aws_iam_user" "jun_ivanov2060" {
  name = "fenlum-1bmogc-jun.ivanov2060"
}

resource "aws_iam_user_login_profile" "jun_ivanov2060" {
  user                    = aws_iam_user.jun_ivanov2060.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_ivanov2060__treasury_5_analysts" {
  user   = aws_iam_user.jun_ivanov2060.name
  groups = [aws_iam_group.treasury_5_analysts.name]
}

resource "aws_iam_user_group_membership" "jun_ivanov2060__kyc_2_analysts" {
  user   = aws_iam_user.jun_ivanov2060.name
  groups = [aws_iam_group.kyc_2_analysts.name]
}

resource "aws_iam_user" "jun_ivanov2682" {
  name = "fenlum-1bmogc-jun.ivanov2682"
}

resource "aws_iam_user_login_profile" "jun_ivanov2682" {
  user                    = aws_iam_user.jun_ivanov2682.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_ivanov2682__payments_6_devs" {
  user   = aws_iam_user.jun_ivanov2682.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "jun_jones" {
  name = "fenlum-1bmogc-jun.jones"
}

resource "aws_iam_user_group_membership" "jun_jones__trading_3_devs" {
  user   = aws_iam_user.jun_jones.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "jun_jones__base_readonly" {
  user       = aws_iam_user.jun_jones.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "jun_lopez" {
  name = "fenlum-1bmogc-jun.lopez"
}

resource "aws_iam_user_login_profile" "jun_lopez" {
  user                    = aws_iam_user.jun_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_lopez__treasury_2_devs" {
  user   = aws_iam_user.jun_lopez.name
  groups = [aws_iam_group.treasury_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "jun_lopez__base_readonly" {
  user       = aws_iam_user.jun_lopez.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "jun_mehta" {
  name = "fenlum-1bmogc-jun.mehta"
}

resource "aws_iam_user_login_profile" "jun_mehta" {
  user                    = aws_iam_user.jun_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_mehta__lending_4_devs" {
  user   = aws_iam_user.jun_mehta.name
  groups = [aws_iam_group.lending_4_devs.name]
}

resource "aws_iam_user_group_membership" "jun_mehta__trading_5_analysts" {
  user   = aws_iam_user.jun_mehta.name
  groups = [aws_iam_group.trading_5_analysts.name]
}

resource "aws_iam_user" "jun_mehta2341" {
  name = "fenlum-1bmogc-jun.mehta2341"
}

resource "aws_iam_user_login_profile" "jun_mehta2341" {
  user                    = aws_iam_user.jun_mehta2341.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_mehta2341__kyc_4_devs" {
  user   = aws_iam_user.jun_mehta2341.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user" "jun_novak" {
  name = "fenlum-1bmogc-jun.novak"
}

resource "aws_iam_user_login_profile" "jun_novak" {
  user                    = aws_iam_user.jun_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_novak__fraud_5_devs" {
  user   = aws_iam_user.jun_novak.name
  groups = [aws_iam_group.fraud_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "jun_novak__base_readonly" {
  user       = aws_iam_user.jun_novak.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "jun_okafor" {
  name = "fenlum-1bmogc-jun.okafor"
}

resource "aws_iam_user_login_profile" "jun_okafor" {
  user                    = aws_iam_user.jun_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_okafor__reporting_6_devs" {
  user   = aws_iam_user.jun_okafor.name
  groups = [aws_iam_group.reporting_6_devs.name]
}

resource "aws_iam_user_group_membership" "jun_okafor__trading_5_analysts" {
  user   = aws_iam_user.jun_okafor.name
  groups = [aws_iam_group.trading_5_analysts.name]
}

resource "aws_iam_user" "jun_okafor335" {
  name = "fenlum-1bmogc-jun.okafor335"
}

resource "aws_iam_user_login_profile" "jun_okafor335" {
  user                    = aws_iam_user.jun_okafor335.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_okafor335__trading_5_devs" {
  user   = aws_iam_user.jun_okafor335.name
  groups = [aws_iam_group.trading_5_devs.name]
}

resource "aws_iam_user" "jun_patel" {
  name = "fenlum-1bmogc-jun.patel"
}

resource "aws_iam_user_login_profile" "jun_patel" {
  user                    = aws_iam_user.jun_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_patel__mobile_6_devs" {
  user   = aws_iam_user.jun_patel.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user" "jun_sato" {
  name = "fenlum-1bmogc-jun.sato"
}

resource "aws_iam_user_login_profile" "jun_sato" {
  user                    = aws_iam_user.jun_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_sato__fraud_6_devs" {
  user   = aws_iam_user.jun_sato.name
  groups = [aws_iam_group.fraud_6_devs.name]
}

resource "aws_iam_user" "jun_silva" {
  name = "fenlum-1bmogc-jun.silva"
}

resource "aws_iam_user_login_profile" "jun_silva" {
  user                    = aws_iam_user.jun_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_silva__treasury_3_devs" {
  user   = aws_iam_user.jun_silva.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user" "jun_singh" {
  name = "fenlum-1bmogc-jun.singh"
}

resource "aws_iam_user_login_profile" "jun_singh" {
  user                    = aws_iam_user.jun_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_singh__kyc_3_devs" {
  user   = aws_iam_user.jun_singh.name
  groups = [aws_iam_group.kyc_3_devs.name]
}

resource "aws_iam_user" "jun_tanaka" {
  name = "fenlum-1bmogc-jun.tanaka"
}

resource "aws_iam_user_group_membership" "jun_tanaka__platform_2_devs" {
  user   = aws_iam_user.jun_tanaka.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user_group_membership" "jun_tanaka__trading_3_analysts" {
  user   = aws_iam_user.jun_tanaka.name
  groups = [aws_iam_group.trading_3_analysts.name]
}

resource "aws_iam_user" "jun_wong" {
  name = "fenlum-1bmogc-jun.wong"
}

resource "aws_iam_user_login_profile" "jun_wong" {
  user                    = aws_iam_user.jun_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_wong__fraud_2_devs" {
  user   = aws_iam_user.jun_wong.name
  groups = [aws_iam_group.fraud_2_devs.name]
}

resource "aws_iam_user" "jun_wong1501" {
  name = "fenlum-1bmogc-jun.wong1501"
}

resource "aws_iam_user_group_membership" "jun_wong1501__payments_5_devs" {
  user   = aws_iam_user.jun_wong1501.name
  groups = [aws_iam_group.payments_5_devs.name]
}

resource "aws_iam_user" "karl_chen" {
  name = "fenlum-1bmogc-karl.chen"
}

resource "aws_iam_user_login_profile" "karl_chen" {
  user                    = aws_iam_user.karl_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_chen__reporting_devs" {
  user   = aws_iam_user.karl_chen.name
  groups = [aws_iam_group.reporting_devs.name]
}

resource "aws_iam_user" "karl_cohen" {
  name = "fenlum-1bmogc-karl.cohen"
}

resource "aws_iam_user_login_profile" "karl_cohen" {
  user                    = aws_iam_user.karl_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_cohen__kyc_devs" {
  user   = aws_iam_user.karl_cohen.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user_group_membership" "karl_cohen__risk_2_analysts" {
  user   = aws_iam_user.karl_cohen.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user" "karl_cohen7806" {
  name = "fenlum-1bmogc-karl.cohen7806"
}

resource "aws_iam_user_login_profile" "karl_cohen7806" {
  user                    = aws_iam_user.karl_cohen7806.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_cohen7806__kyc_4_devs" {
  user   = aws_iam_user.karl_cohen7806.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user_policy_attachment" "karl_cohen7806__base_readonly" {
  user       = aws_iam_user.karl_cohen7806.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "karl_dubois" {
  name = "fenlum-1bmogc-karl.dubois"
}

resource "aws_iam_user_login_profile" "karl_dubois" {
  user                    = aws_iam_user.karl_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_dubois__trading_devs" {
  user   = aws_iam_user.karl_dubois.name
  groups = [aws_iam_group.trading_devs.name]
}

resource "aws_iam_user" "karl_garcia" {
  name = "fenlum-1bmogc-karl.garcia"
}

resource "aws_iam_user_login_profile" "karl_garcia" {
  user                    = aws_iam_user.karl_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_garcia__payments_7_devs" {
  user   = aws_iam_user.karl_garcia.name
  groups = [aws_iam_group.payments_7_devs.name]
}

resource "aws_iam_user" "karl_jones" {
  name = "fenlum-1bmogc-karl.jones"
}

resource "aws_iam_user_login_profile" "karl_jones" {
  user                    = aws_iam_user.karl_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_jones__data_eng_3_devs" {
  user   = aws_iam_user.karl_jones.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user_group_membership" "karl_jones__ledger_4_analysts" {
  user   = aws_iam_user.karl_jones.name
  groups = [aws_iam_group.ledger_4_analysts.name]
}

resource "aws_iam_user" "karl_khan" {
  name = "fenlum-1bmogc-karl.khan"
}

resource "aws_iam_user_login_profile" "karl_khan" {
  user                    = aws_iam_user.karl_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_khan__trading_5_devs" {
  user   = aws_iam_user.karl_khan.name
  groups = [aws_iam_group.trading_5_devs.name]
}

resource "aws_iam_user" "karl_khan1675" {
  name = "fenlum-1bmogc-karl.khan1675"
}

resource "aws_iam_user_login_profile" "karl_khan1675" {
  user                    = aws_iam_user.karl_khan1675.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_khan1675__payments_2_devs" {
  user   = aws_iam_user.karl_khan1675.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user_group_membership" "karl_khan1675__lending_7_analysts" {
  user   = aws_iam_user.karl_khan1675.name
  groups = [aws_iam_group.lending_7_analysts.name]
}

resource "aws_iam_user" "karl_kim" {
  name = "fenlum-1bmogc-karl.kim"
}

resource "aws_iam_user_login_profile" "karl_kim" {
  user                    = aws_iam_user.karl_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_kim__lending_2_devs" {
  user   = aws_iam_user.karl_kim.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user_group_membership" "karl_kim__kyc_5_analysts" {
  user   = aws_iam_user.karl_kim.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "karl_larsen" {
  name = "fenlum-1bmogc-karl.larsen"
}

resource "aws_iam_user_login_profile" "karl_larsen" {
  user                    = aws_iam_user.karl_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_larsen__fraud_7_devs" {
  user   = aws_iam_user.karl_larsen.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user_group_membership" "karl_larsen__kyc_7_analysts" {
  user   = aws_iam_user.karl_larsen.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user" "karl_mehta" {
  name = "fenlum-1bmogc-karl.mehta"
}

resource "aws_iam_user_login_profile" "karl_mehta" {
  user                    = aws_iam_user.karl_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_mehta__mobile_devs" {
  user   = aws_iam_user.karl_mehta.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "karl_miller" {
  name = "fenlum-1bmogc-karl.miller"
}

resource "aws_iam_user_login_profile" "karl_miller" {
  user                    = aws_iam_user.karl_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_miller__data_eng_3_devs" {
  user   = aws_iam_user.karl_miller.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user" "karl_muller" {
  name = "fenlum-1bmogc-karl.muller"
}

resource "aws_iam_user_login_profile" "karl_muller" {
  user                    = aws_iam_user.karl_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_muller__reporting_3_analysts" {
  user   = aws_iam_user.karl_muller.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "karl_nguyen" {
  name = "fenlum-1bmogc-karl.nguyen"
}

resource "aws_iam_user_login_profile" "karl_nguyen" {
  user                    = aws_iam_user.karl_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_nguyen__lending_4_devs" {
  user   = aws_iam_user.karl_nguyen.name
  groups = [aws_iam_group.lending_4_devs.name]
}

resource "aws_iam_user" "karl_okafor" {
  name = "fenlum-1bmogc-karl.okafor"
}

resource "aws_iam_user_login_profile" "karl_okafor" {
  user                    = aws_iam_user.karl_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_okafor__mobile_devs" {
  user   = aws_iam_user.karl_okafor.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_group_membership" "karl_okafor__treasury_7_analysts" {
  user   = aws_iam_user.karl_okafor.name
  groups = [aws_iam_group.treasury_7_analysts.name]
}

resource "aws_iam_user" "karl_okafor3888" {
  name = "fenlum-1bmogc-karl.okafor3888"
}

resource "aws_iam_user_login_profile" "karl_okafor3888" {
  user                    = aws_iam_user.karl_okafor3888.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_okafor3888__ledger_3_devs" {
  user   = aws_iam_user.karl_okafor3888.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user" "karl_reddy" {
  name = "fenlum-1bmogc-karl.reddy"
}

resource "aws_iam_user_login_profile" "karl_reddy" {
  user                    = aws_iam_user.karl_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_reddy__data_eng_4_devs" {
  user   = aws_iam_user.karl_reddy.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user" "karl_reddy4781" {
  name = "fenlum-1bmogc-karl.reddy4781"
}

resource "aws_iam_user_login_profile" "karl_reddy4781" {
  user                    = aws_iam_user.karl_reddy4781.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_reddy4781__payments_devs" {
  user   = aws_iam_user.karl_reddy4781.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user" "karl_rossi" {
  name = "fenlum-1bmogc-karl.rossi"
}

resource "aws_iam_user_group_membership" "karl_rossi__mobile_5_devs" {
  user   = aws_iam_user.karl_rossi.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user_group_membership" "karl_rossi__trading_2_analysts" {
  user   = aws_iam_user.karl_rossi.name
  groups = [aws_iam_group.trading_2_analysts.name]
}

resource "aws_iam_user" "karl_sato" {
  name = "fenlum-1bmogc-karl.sato"
}

resource "aws_iam_user_login_profile" "karl_sato" {
  user                    = aws_iam_user.karl_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_sato__treasury_devs" {
  user   = aws_iam_user.karl_sato.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user_policy_attachment" "karl_sato__base_readonly" {
  user       = aws_iam_user.karl_sato.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "karl_singh" {
  name = "fenlum-1bmogc-karl.singh"
}

resource "aws_iam_user_login_profile" "karl_singh" {
  user                    = aws_iam_user.karl_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_singh__mobile_4_analysts" {
  user   = aws_iam_user.karl_singh.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "karl_wong" {
  name = "fenlum-1bmogc-karl.wong"
}

resource "aws_iam_user_login_profile" "karl_wong" {
  user                    = aws_iam_user.karl_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_wong__payments_6_devs" {
  user   = aws_iam_user.karl_wong.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "kia_brown" {
  name = "fenlum-1bmogc-kia.brown"
}

resource "aws_iam_user_login_profile" "kia_brown" {
  user                    = aws_iam_user.kia_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_brown__mobile_4_analysts" {
  user   = aws_iam_user.kia_brown.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "kia_chen" {
  name = "fenlum-1bmogc-kia.chen"
}

resource "aws_iam_user_login_profile" "kia_chen" {
  user                    = aws_iam_user.kia_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_chen__ledger_4_analysts" {
  user   = aws_iam_user.kia_chen.name
  groups = [aws_iam_group.ledger_4_analysts.name]
}

resource "aws_iam_user_group_membership" "kia_chen__lending_analysts" {
  user   = aws_iam_user.kia_chen.name
  groups = [aws_iam_group.lending_analysts.name]
}

resource "aws_iam_user" "kia_cohen" {
  name = "fenlum-1bmogc-kia.cohen"
}

resource "aws_iam_user_login_profile" "kia_cohen" {
  user                    = aws_iam_user.kia_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_cohen__mobile_6_devs" {
  user   = aws_iam_user.kia_cohen.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user" "kia_davis" {
  name = "fenlum-1bmogc-kia.davis"
}

resource "aws_iam_user_login_profile" "kia_davis" {
  user                    = aws_iam_user.kia_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_davis__reporting_6_analysts" {
  user   = aws_iam_user.kia_davis.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "kia_davis__base_readonly" {
  user       = aws_iam_user.kia_davis.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "kia_dubois" {
  name = "fenlum-1bmogc-kia.dubois"
}

resource "aws_iam_user_login_profile" "kia_dubois" {
  user                    = aws_iam_user.kia_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_dubois__treasury_devs" {
  user   = aws_iam_user.kia_dubois.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user_policy_attachment" "kia_dubois__base_readonly" {
  user       = aws_iam_user.kia_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "kia_gupta" {
  name = "fenlum-1bmogc-kia.gupta"
}

resource "aws_iam_user_login_profile" "kia_gupta" {
  user                    = aws_iam_user.kia_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_gupta__risk_7_analysts" {
  user   = aws_iam_user.kia_gupta.name
  groups = [aws_iam_group.risk_7_analysts.name]
}

resource "aws_iam_user" "kia_haddad" {
  name = "fenlum-1bmogc-kia.haddad"
}

resource "aws_iam_user_login_profile" "kia_haddad" {
  user                    = aws_iam_user.kia_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_haddad__treasury_2_devs" {
  user   = aws_iam_user.kia_haddad.name
  groups = [aws_iam_group.treasury_2_devs.name]
}

resource "aws_iam_user" "kia_ivanov" {
  name = "fenlum-1bmogc-kia.ivanov"
}

resource "aws_iam_user_login_profile" "kia_ivanov" {
  user                    = aws_iam_user.kia_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_ivanov__kyc_devs" {
  user   = aws_iam_user.kia_ivanov.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user" "kia_jones" {
  name = "fenlum-1bmogc-kia.jones"
}

resource "aws_iam_user_login_profile" "kia_jones" {
  user                    = aws_iam_user.kia_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_jones__mobile_4_devs" {
  user   = aws_iam_user.kia_jones.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "kia_jones9904" {
  name = "fenlum-1bmogc-kia.jones9904"
}

resource "aws_iam_user_login_profile" "kia_jones9904" {
  user                    = aws_iam_user.kia_jones9904.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_jones9904__lending_2_devs" {
  user   = aws_iam_user.kia_jones9904.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user_group_membership" "kia_jones9904__fraud_3_analysts" {
  user   = aws_iam_user.kia_jones9904.name
  groups = [aws_iam_group.fraud_3_analysts.name]
}

resource "aws_iam_user" "kia_khan" {
  name = "fenlum-1bmogc-kia.khan"
}

resource "aws_iam_user_login_profile" "kia_khan" {
  user                    = aws_iam_user.kia_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_khan__reporting_4_devs" {
  user   = aws_iam_user.kia_khan.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user" "kia_kim" {
  name = "fenlum-1bmogc-kia.kim"
}

resource "aws_iam_user_group_membership" "kia_kim__treasury_3_devs" {
  user   = aws_iam_user.kia_kim.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "kia_kim__base_readonly" {
  user       = aws_iam_user.kia_kim.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "kia_kim2567" {
  name = "fenlum-1bmogc-kia.kim2567"
}

resource "aws_iam_user_login_profile" "kia_kim2567" {
  user                    = aws_iam_user.kia_kim2567.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_kim2567__treasury_4_devs" {
  user   = aws_iam_user.kia_kim2567.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user" "kia_miller" {
  name = "fenlum-1bmogc-kia.miller"
}

resource "aws_iam_user_group_membership" "kia_miller__treasury_5_devs" {
  user   = aws_iam_user.kia_miller.name
  groups = [aws_iam_group.treasury_5_devs.name]
}

resource "aws_iam_user" "kia_novak" {
  name = "fenlum-1bmogc-kia.novak"
}

resource "aws_iam_user_login_profile" "kia_novak" {
  user                    = aws_iam_user.kia_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_novak__platform_6_devs" {
  user   = aws_iam_user.kia_novak.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "kia_patel" {
  name = "fenlum-1bmogc-kia.patel"
}

resource "aws_iam_user_login_profile" "kia_patel" {
  user                    = aws_iam_user.kia_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_patel__reporting_devs" {
  user   = aws_iam_user.kia_patel.name
  groups = [aws_iam_group.reporting_devs.name]
}

resource "aws_iam_user" "kia_reddy" {
  name = "fenlum-1bmogc-kia.reddy"
}

resource "aws_iam_user_login_profile" "kia_reddy" {
  user                    = aws_iam_user.kia_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_reddy__kyc_4_devs" {
  user   = aws_iam_user.kia_reddy.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user" "kia_sato" {
  name = "fenlum-1bmogc-kia.sato"
}

resource "aws_iam_user_login_profile" "kia_sato" {
  user                    = aws_iam_user.kia_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_sato__data_eng_3_analysts" {
  user   = aws_iam_user.kia_sato.name
  groups = [aws_iam_group.data_eng_3_analysts.name]
}

resource "aws_iam_user" "kia_sato4509" {
  name = "fenlum-1bmogc-kia.sato4509"
}

resource "aws_iam_user_group_membership" "kia_sato4509__trading_6_analysts" {
  user   = aws_iam_user.kia_sato4509.name
  groups = [aws_iam_group.trading_6_analysts.name]
}

resource "aws_iam_user" "kia_singh" {
  name = "fenlum-1bmogc-kia.singh"
}

resource "aws_iam_user_login_profile" "kia_singh" {
  user                    = aws_iam_user.kia_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_singh__lending_6_analysts" {
  user   = aws_iam_user.kia_singh.name
  groups = [aws_iam_group.lending_6_analysts.name]
}

resource "aws_iam_user" "kia_smith" {
  name = "fenlum-1bmogc-kia.smith"
}

resource "aws_iam_user_group_membership" "kia_smith__kyc_devs" {
  user   = aws_iam_user.kia_smith.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user" "kia_smith3031" {
  name = "fenlum-1bmogc-kia.smith3031"
}

resource "aws_iam_user_group_membership" "kia_smith3031__risk_7_analysts" {
  user   = aws_iam_user.kia_smith3031.name
  groups = [aws_iam_group.risk_7_analysts.name]
}

resource "aws_iam_user_group_membership" "kia_smith3031__kyc_2_analysts" {
  user   = aws_iam_user.kia_smith3031.name
  groups = [aws_iam_group.kyc_2_analysts.name]
}

resource "aws_iam_user" "kia_tanaka" {
  name = "fenlum-1bmogc-kia.tanaka"
}

resource "aws_iam_user_login_profile" "kia_tanaka" {
  user                    = aws_iam_user.kia_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_tanaka__reporting_6_analysts" {
  user   = aws_iam_user.kia_tanaka.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user" "kia_wong" {
  name = "fenlum-1bmogc-kia.wong"
}

resource "aws_iam_user_login_profile" "kia_wong" {
  user                    = aws_iam_user.kia_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_wong__payments_4_devs" {
  user   = aws_iam_user.kia_wong.name
  groups = [aws_iam_group.payments_4_devs.name]
}

resource "aws_iam_user" "lena_ali" {
  name = "fenlum-1bmogc-lena.ali"
}

resource "aws_iam_user_login_profile" "lena_ali" {
  user                    = aws_iam_user.lena_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_ali__payments_5_devs" {
  user   = aws_iam_user.lena_ali.name
  groups = [aws_iam_group.payments_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "lena_ali__base_readonly" {
  user       = aws_iam_user.lena_ali.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "lena_cohen" {
  name = "fenlum-1bmogc-lena.cohen"
}

resource "aws_iam_user_login_profile" "lena_cohen" {
  user                    = aws_iam_user.lena_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_cohen__risk_3_analysts" {
  user   = aws_iam_user.lena_cohen.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "lena_cohen__base_readonly" {
  user       = aws_iam_user.lena_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "lena_dubois" {
  name = "fenlum-1bmogc-lena.dubois"
}

resource "aws_iam_user_login_profile" "lena_dubois" {
  user                    = aws_iam_user.lena_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_dubois__risk_6_devs" {
  user   = aws_iam_user.lena_dubois.name
  groups = [aws_iam_group.risk_6_devs.name]
}

resource "aws_iam_user" "lena_gupta" {
  name = "fenlum-1bmogc-lena.gupta"
}

resource "aws_iam_user_login_profile" "lena_gupta" {
  user                    = aws_iam_user.lena_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_gupta__lending_7_devs" {
  user   = aws_iam_user.lena_gupta.name
  groups = [aws_iam_group.lending_7_devs.name]
}

resource "aws_iam_user" "lena_gupta3512" {
  name = "fenlum-1bmogc-lena.gupta3512"
}

resource "aws_iam_user_login_profile" "lena_gupta3512" {
  user                    = aws_iam_user.lena_gupta3512.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_gupta3512__data_eng_5_devs" {
  user   = aws_iam_user.lena_gupta3512.name
  groups = [aws_iam_group.data_eng_5_devs.name]
}

resource "aws_iam_user" "lena_haddad" {
  name = "fenlum-1bmogc-lena.haddad"
}

resource "aws_iam_user_login_profile" "lena_haddad" {
  user                    = aws_iam_user.lena_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_haddad__data_eng_4_devs" {
  user   = aws_iam_user.lena_haddad.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user" "lena_haddad4214" {
  name = "fenlum-1bmogc-lena.haddad4214"
}

resource "aws_iam_user_login_profile" "lena_haddad4214" {
  user                    = aws_iam_user.lena_haddad4214.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_haddad4214__risk_3_devs" {
  user   = aws_iam_user.lena_haddad4214.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user" "lena_kim" {
  name = "fenlum-1bmogc-lena.kim"
}

resource "aws_iam_user_login_profile" "lena_kim" {
  user                    = aws_iam_user.lena_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_kim__treasury_7_devs" {
  user   = aws_iam_user.lena_kim.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "lena_mehta" {
  name = "fenlum-1bmogc-lena.mehta"
}

resource "aws_iam_user_login_profile" "lena_mehta" {
  user                    = aws_iam_user.lena_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_mehta__risk_4_devs" {
  user   = aws_iam_user.lena_mehta.name
  groups = [aws_iam_group.risk_4_devs.name]
}

resource "aws_iam_user" "lena_miller" {
  name = "fenlum-1bmogc-lena.miller"
}

resource "aws_iam_user_login_profile" "lena_miller" {
  user                    = aws_iam_user.lena_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_miller__risk_5_analysts" {
  user   = aws_iam_user.lena_miller.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user" "lena_novak" {
  name = "fenlum-1bmogc-lena.novak"
}

resource "aws_iam_user_login_profile" "lena_novak" {
  user                    = aws_iam_user.lena_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_novak__kyc_5_devs" {
  user   = aws_iam_user.lena_novak.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "lena_okafor" {
  name = "fenlum-1bmogc-lena.okafor"
}

resource "aws_iam_user_login_profile" "lena_okafor" {
  user                    = aws_iam_user.lena_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_okafor__payments_5_devs" {
  user   = aws_iam_user.lena_okafor.name
  groups = [aws_iam_group.payments_5_devs.name]
}

resource "aws_iam_user" "lena_patel" {
  name = "fenlum-1bmogc-lena.patel"
}

resource "aws_iam_user_login_profile" "lena_patel" {
  user                    = aws_iam_user.lena_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_patel__lending_5_devs" {
  user   = aws_iam_user.lena_patel.name
  groups = [aws_iam_group.lending_5_devs.name]
}

resource "aws_iam_user" "lena_reddy" {
  name = "fenlum-1bmogc-lena.reddy"
}

resource "aws_iam_user_login_profile" "lena_reddy" {
  user                    = aws_iam_user.lena_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_reddy__risk_6_devs" {
  user   = aws_iam_user.lena_reddy.name
  groups = [aws_iam_group.risk_6_devs.name]
}

resource "aws_iam_user" "lena_rossi" {
  name = "fenlum-1bmogc-lena.rossi"
}

resource "aws_iam_user_group_membership" "lena_rossi__mobile_3_devs" {
  user   = aws_iam_user.lena_rossi.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "lena_rossi6591" {
  name = "fenlum-1bmogc-lena.rossi6591"
}

resource "aws_iam_user_login_profile" "lena_rossi6591" {
  user                    = aws_iam_user.lena_rossi6591.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_rossi6591__treasury_devs" {
  user   = aws_iam_user.lena_rossi6591.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "lena_sato" {
  name = "fenlum-1bmogc-lena.sato"
}

resource "aws_iam_user_login_profile" "lena_sato" {
  user                    = aws_iam_user.lena_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_sato__risk_7_devs" {
  user   = aws_iam_user.lena_sato.name
  groups = [aws_iam_group.risk_7_devs.name]
}

resource "aws_iam_user" "lena_sato8369" {
  name = "fenlum-1bmogc-lena.sato8369"
}

resource "aws_iam_user_login_profile" "lena_sato8369" {
  user                    = aws_iam_user.lena_sato8369.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_sato8369__data_eng_2_analysts" {
  user   = aws_iam_user.lena_sato8369.name
  groups = [aws_iam_group.data_eng_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "lena_sato8369__base_readonly" {
  user       = aws_iam_user.lena_sato8369.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "lena_singh" {
  name = "fenlum-1bmogc-lena.singh"
}

resource "aws_iam_user_group_membership" "lena_singh__trading_7_devs" {
  user   = aws_iam_user.lena_singh.name
  groups = [aws_iam_group.trading_7_devs.name]
}

resource "aws_iam_user_group_membership" "lena_singh__ledger_4_analysts" {
  user   = aws_iam_user.lena_singh.name
  groups = [aws_iam_group.ledger_4_analysts.name]
}

resource "aws_iam_user" "lena_wong" {
  name = "fenlum-1bmogc-lena.wong"
}

resource "aws_iam_user_login_profile" "lena_wong" {
  user                    = aws_iam_user.lena_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_wong__mobile_5_devs" {
  user   = aws_iam_user.lena_wong.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user" "leo_brown" {
  name = "fenlum-1bmogc-leo.brown"
}

resource "aws_iam_user_login_profile" "leo_brown" {
  user                    = aws_iam_user.leo_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_brown__reporting_2_devs" {
  user   = aws_iam_user.leo_brown.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "leo_garcia" {
  name = "fenlum-1bmogc-leo.garcia"
}

resource "aws_iam_user_login_profile" "leo_garcia" {
  user                    = aws_iam_user.leo_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_garcia__lending_6_devs" {
  user   = aws_iam_user.leo_garcia.name
  groups = [aws_iam_group.lending_6_devs.name]
}

resource "aws_iam_user" "leo_garcia1645" {
  name = "fenlum-1bmogc-leo.garcia1645"
}

resource "aws_iam_user_login_profile" "leo_garcia1645" {
  user                    = aws_iam_user.leo_garcia1645.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_garcia1645__fraud_7_analysts" {
  user   = aws_iam_user.leo_garcia1645.name
  groups = [aws_iam_group.fraud_7_analysts.name]
}

resource "aws_iam_user" "leo_gupta" {
  name = "fenlum-1bmogc-leo.gupta"
}

resource "aws_iam_user_login_profile" "leo_gupta" {
  user                    = aws_iam_user.leo_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_gupta__treasury_6_devs" {
  user   = aws_iam_user.leo_gupta.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user" "leo_gupta857" {
  name = "fenlum-1bmogc-leo.gupta857"
}

resource "aws_iam_user_login_profile" "leo_gupta857" {
  user                    = aws_iam_user.leo_gupta857.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_gupta857__kyc_2_devs" {
  user   = aws_iam_user.leo_gupta857.name
  groups = [aws_iam_group.kyc_2_devs.name]
}

resource "aws_iam_user" "leo_khan" {
  name = "fenlum-1bmogc-leo.khan"
}

resource "aws_iam_user_login_profile" "leo_khan" {
  user                    = aws_iam_user.leo_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_khan__fraud_analysts" {
  user   = aws_iam_user.leo_khan.name
  groups = [aws_iam_group.fraud_analysts.name]
}

resource "aws_iam_user" "leo_lopez" {
  name = "fenlum-1bmogc-leo.lopez"
}

resource "aws_iam_user_login_profile" "leo_lopez" {
  user                    = aws_iam_user.leo_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_lopez__payments_6_analysts" {
  user   = aws_iam_user.leo_lopez.name
  groups = [aws_iam_group.payments_6_analysts.name]
}

resource "aws_iam_user" "leo_lopez4808" {
  name = "fenlum-1bmogc-leo.lopez4808"
}

resource "aws_iam_user_group_membership" "leo_lopez4808__payments_4_devs" {
  user   = aws_iam_user.leo_lopez4808.name
  groups = [aws_iam_group.payments_4_devs.name]
}

resource "aws_iam_user" "leo_mehta" {
  name = "fenlum-1bmogc-leo.mehta"
}

resource "aws_iam_user_login_profile" "leo_mehta" {
  user                    = aws_iam_user.leo_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_mehta__fraud_4_analysts" {
  user   = aws_iam_user.leo_mehta.name
  groups = [aws_iam_group.fraud_4_analysts.name]
}

resource "aws_iam_user" "leo_miller" {
  name = "fenlum-1bmogc-leo.miller"
}

resource "aws_iam_user_login_profile" "leo_miller" {
  user                    = aws_iam_user.leo_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_miller__payments_3_devs" {
  user   = aws_iam_user.leo_miller.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user_group_membership" "leo_miller__kyc_6_analysts" {
  user   = aws_iam_user.leo_miller.name
  groups = [aws_iam_group.kyc_6_analysts.name]
}

resource "aws_iam_user" "leo_miller9273" {
  name = "fenlum-1bmogc-leo.miller9273"
}

resource "aws_iam_user_login_profile" "leo_miller9273" {
  user                    = aws_iam_user.leo_miller9273.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_miller9273__data_eng_3_devs" {
  user   = aws_iam_user.leo_miller9273.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user" "leo_novak" {
  name = "fenlum-1bmogc-leo.novak"
}

resource "aws_iam_user_group_membership" "leo_novak__payments_6_devs" {
  user   = aws_iam_user.leo_novak.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user_group_membership" "leo_novak__risk_6_analysts" {
  user   = aws_iam_user.leo_novak.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user" "leo_reddy" {
  name = "fenlum-1bmogc-leo.reddy"
}

resource "aws_iam_user_group_membership" "leo_reddy__treasury_6_devs" {
  user   = aws_iam_user.leo_reddy.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user" "leo_singh" {
  name = "fenlum-1bmogc-leo.singh"
}

resource "aws_iam_user_group_membership" "leo_singh__risk_2_devs" {
  user   = aws_iam_user.leo_singh.name
  groups = [aws_iam_group.risk_2_devs.name]
}

resource "aws_iam_user" "leo_singh2606" {
  name = "fenlum-1bmogc-leo.singh2606"
}

resource "aws_iam_user_login_profile" "leo_singh2606" {
  user                    = aws_iam_user.leo_singh2606.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_singh2606__ledger_2_analysts" {
  user   = aws_iam_user.leo_singh2606.name
  groups = [aws_iam_group.ledger_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "leo_singh2606__base_readonly" {
  user       = aws_iam_user.leo_singh2606.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "leo_tanaka" {
  name = "fenlum-1bmogc-leo.tanaka"
}

resource "aws_iam_user_login_profile" "leo_tanaka" {
  user                    = aws_iam_user.leo_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_tanaka__payments_2_devs" {
  user   = aws_iam_user.leo_tanaka.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user" "leo_wong" {
  name = "fenlum-1bmogc-leo.wong"
}

resource "aws_iam_user_login_profile" "leo_wong" {
  user                    = aws_iam_user.leo_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_wong__lending_2_analysts" {
  user   = aws_iam_user.leo_wong.name
  groups = [aws_iam_group.lending_2_analysts.name]
}

resource "aws_iam_user" "leo_wong3714" {
  name = "fenlum-1bmogc-leo.wong3714"
}

resource "aws_iam_user_login_profile" "leo_wong3714" {
  user                    = aws_iam_user.leo_wong3714.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_wong3714__data_eng_3_devs" {
  user   = aws_iam_user.leo_wong3714.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user" "mei_ali" {
  name = "fenlum-1bmogc-mei.ali"
}

resource "aws_iam_user_login_profile" "mei_ali" {
  user                    = aws_iam_user.mei_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_ali__fraud_analysts" {
  user   = aws_iam_user.mei_ali.name
  groups = [aws_iam_group.fraud_analysts.name]
}

resource "aws_iam_user" "mei_ali2574" {
  name = "fenlum-1bmogc-mei.ali2574"
}

resource "aws_iam_user_login_profile" "mei_ali2574" {
  user                    = aws_iam_user.mei_ali2574.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_ali2574__ledger_4_devs" {
  user   = aws_iam_user.mei_ali2574.name
  groups = [aws_iam_group.ledger_4_devs.name]
}

resource "aws_iam_user" "mei_ali744" {
  name = "fenlum-1bmogc-mei.ali744"
}

resource "aws_iam_user_login_profile" "mei_ali744" {
  user                    = aws_iam_user.mei_ali744.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_ali744__data_eng_6_devs" {
  user   = aws_iam_user.mei_ali744.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user_group_membership" "mei_ali744__platform_analysts" {
  user   = aws_iam_user.mei_ali744.name
  groups = [aws_iam_group.platform_analysts.name]
}

resource "aws_iam_user" "mei_chen" {
  name = "fenlum-1bmogc-mei.chen"
}

resource "aws_iam_user_login_profile" "mei_chen" {
  user                    = aws_iam_user.mei_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_chen__treasury_devs" {
  user   = aws_iam_user.mei_chen.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "mei_chen7105" {
  name = "fenlum-1bmogc-mei.chen7105"
}

resource "aws_iam_user_login_profile" "mei_chen7105" {
  user                    = aws_iam_user.mei_chen7105.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_chen7105__payments_5_analysts" {
  user   = aws_iam_user.mei_chen7105.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "mei_chen7105__base_readonly" {
  user       = aws_iam_user.mei_chen7105.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_chen8185" {
  name = "fenlum-1bmogc-mei.chen8185"
}

resource "aws_iam_user_login_profile" "mei_chen8185" {
  user                    = aws_iam_user.mei_chen8185.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_chen8185__fraud_devs" {
  user   = aws_iam_user.mei_chen8185.name
  groups = [aws_iam_group.fraud_devs.name]
}

resource "aws_iam_user_group_membership" "mei_chen8185__lending_analysts" {
  user   = aws_iam_user.mei_chen8185.name
  groups = [aws_iam_group.lending_analysts.name]
}

resource "aws_iam_user" "mei_davis" {
  name = "fenlum-1bmogc-mei.davis"
}

resource "aws_iam_user_login_profile" "mei_davis" {
  user                    = aws_iam_user.mei_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_davis__treasury_4_devs" {
  user   = aws_iam_user.mei_davis.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user" "mei_dubois" {
  name = "fenlum-1bmogc-mei.dubois"
}

resource "aws_iam_user_login_profile" "mei_dubois" {
  user                    = aws_iam_user.mei_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_dubois__payments_5_devs" {
  user   = aws_iam_user.mei_dubois.name
  groups = [aws_iam_group.payments_5_devs.name]
}

resource "aws_iam_user" "mei_dubois1589" {
  name = "fenlum-1bmogc-mei.dubois1589"
}

resource "aws_iam_user_login_profile" "mei_dubois1589" {
  user                    = aws_iam_user.mei_dubois1589.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_dubois1589__fraud_3_analysts" {
  user   = aws_iam_user.mei_dubois1589.name
  groups = [aws_iam_group.fraud_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "mei_dubois1589__base_readonly" {
  user       = aws_iam_user.mei_dubois1589.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_dubois6979" {
  name = "fenlum-1bmogc-mei.dubois6979"
}

resource "aws_iam_user_login_profile" "mei_dubois6979" {
  user                    = aws_iam_user.mei_dubois6979.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_dubois6979__platform_devs" {
  user   = aws_iam_user.mei_dubois6979.name
  groups = [aws_iam_group.platform_devs.name]
}

resource "aws_iam_user_group_membership" "mei_dubois6979__treasury_3_analysts" {
  user   = aws_iam_user.mei_dubois6979.name
  groups = [aws_iam_group.treasury_3_analysts.name]
}

resource "aws_iam_user" "mei_jones" {
  name = "fenlum-1bmogc-mei.jones"
}

resource "aws_iam_user_login_profile" "mei_jones" {
  user                    = aws_iam_user.mei_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_jones__reporting_5_devs" {
  user   = aws_iam_user.mei_jones.name
  groups = [aws_iam_group.reporting_5_devs.name]
}

resource "aws_iam_user" "mei_kim" {
  name = "fenlum-1bmogc-mei.kim"
}

resource "aws_iam_user_group_membership" "mei_kim__treasury_devs" {
  user   = aws_iam_user.mei_kim.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user_group_membership" "mei_kim__fraud_3_analysts" {
  user   = aws_iam_user.mei_kim.name
  groups = [aws_iam_group.fraud_3_analysts.name]
}

resource "aws_iam_user" "mei_kim4044" {
  name = "fenlum-1bmogc-mei.kim4044"
}

resource "aws_iam_user_login_profile" "mei_kim4044" {
  user                    = aws_iam_user.mei_kim4044.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_kim4044__treasury_2_devs" {
  user   = aws_iam_user.mei_kim4044.name
  groups = [aws_iam_group.treasury_2_devs.name]
}

resource "aws_iam_user" "mei_larsen" {
  name = "fenlum-1bmogc-mei.larsen"
}

resource "aws_iam_user_login_profile" "mei_larsen" {
  user                    = aws_iam_user.mei_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_larsen__data_eng_5_devs" {
  user   = aws_iam_user.mei_larsen.name
  groups = [aws_iam_group.data_eng_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "mei_larsen__base_readonly" {
  user       = aws_iam_user.mei_larsen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_lopez" {
  name = "fenlum-1bmogc-mei.lopez"
}

resource "aws_iam_user_login_profile" "mei_lopez" {
  user                    = aws_iam_user.mei_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_lopez__trading_2_devs" {
  user   = aws_iam_user.mei_lopez.name
  groups = [aws_iam_group.trading_2_devs.name]
}

resource "aws_iam_user" "mei_muller" {
  name = "fenlum-1bmogc-mei.muller"
}

resource "aws_iam_user_group_membership" "mei_muller__kyc_3_devs" {
  user   = aws_iam_user.mei_muller.name
  groups = [aws_iam_group.kyc_3_devs.name]
}

resource "aws_iam_user_group_membership" "mei_muller__lending_2_analysts" {
  user   = aws_iam_user.mei_muller.name
  groups = [aws_iam_group.lending_2_analysts.name]
}

resource "aws_iam_user" "mei_muller2067" {
  name = "fenlum-1bmogc-mei.muller2067"
}

resource "aws_iam_user_login_profile" "mei_muller2067" {
  user                    = aws_iam_user.mei_muller2067.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_muller2067__data_eng_4_devs" {
  user   = aws_iam_user.mei_muller2067.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user_group_membership" "mei_muller2067__risk_6_analysts" {
  user   = aws_iam_user.mei_muller2067.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user" "mei_muller3325" {
  name = "fenlum-1bmogc-mei.muller3325"
}

resource "aws_iam_user_login_profile" "mei_muller3325" {
  user                    = aws_iam_user.mei_muller3325.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_muller3325__platform_4_devs" {
  user   = aws_iam_user.mei_muller3325.name
  groups = [aws_iam_group.platform_4_devs.name]
}

resource "aws_iam_user_group_membership" "mei_muller3325__lending_5_analysts" {
  user   = aws_iam_user.mei_muller3325.name
  groups = [aws_iam_group.lending_5_analysts.name]
}

resource "aws_iam_user" "mei_novak" {
  name = "fenlum-1bmogc-mei.novak"
}

resource "aws_iam_user_login_profile" "mei_novak" {
  user                    = aws_iam_user.mei_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_novak__mobile_3_devs" {
  user   = aws_iam_user.mei_novak.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user_group_membership" "mei_novak__trading_6_analysts" {
  user   = aws_iam_user.mei_novak.name
  groups = [aws_iam_group.trading_6_analysts.name]
}

resource "aws_iam_user" "mei_okafor" {
  name = "fenlum-1bmogc-mei.okafor"
}

resource "aws_iam_user_login_profile" "mei_okafor" {
  user                    = aws_iam_user.mei_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_okafor__kyc_7_analysts" {
  user   = aws_iam_user.mei_okafor.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user" "mei_reddy" {
  name = "fenlum-1bmogc-mei.reddy"
}

resource "aws_iam_user_login_profile" "mei_reddy" {
  user                    = aws_iam_user.mei_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_reddy__payments_5_analysts" {
  user   = aws_iam_user.mei_reddy.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "mei_reddy__base_readonly" {
  user       = aws_iam_user.mei_reddy.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_rossi" {
  name = "fenlum-1bmogc-mei.rossi"
}

resource "aws_iam_user_login_profile" "mei_rossi" {
  user                    = aws_iam_user.mei_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_rossi__reporting_2_analysts" {
  user   = aws_iam_user.mei_rossi.name
  groups = [aws_iam_group.reporting_2_analysts.name]
}

resource "aws_iam_user" "mei_sato" {
  name = "fenlum-1bmogc-mei.sato"
}

resource "aws_iam_user_login_profile" "mei_sato" {
  user                    = aws_iam_user.mei_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_sato__reporting_4_devs" {
  user   = aws_iam_user.mei_sato.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user" "mei_sato5012" {
  name = "fenlum-1bmogc-mei.sato5012"
}

resource "aws_iam_user_login_profile" "mei_sato5012" {
  user                    = aws_iam_user.mei_sato5012.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_sato5012__platform_3_devs" {
  user   = aws_iam_user.mei_sato5012.name
  groups = [aws_iam_group.platform_3_devs.name]
}

resource "aws_iam_user" "mei_silva" {
  name = "fenlum-1bmogc-mei.silva"
}

resource "aws_iam_user_login_profile" "mei_silva" {
  user                    = aws_iam_user.mei_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_silva__reporting_5_devs" {
  user   = aws_iam_user.mei_silva.name
  groups = [aws_iam_group.reporting_5_devs.name]
}

resource "aws_iam_user" "mei_silva7698" {
  name = "fenlum-1bmogc-mei.silva7698"
}

resource "aws_iam_user_login_profile" "mei_silva7698" {
  user                    = aws_iam_user.mei_silva7698.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_silva7698__kyc_7_analysts" {
  user   = aws_iam_user.mei_silva7698.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user_group_membership" "mei_silva7698__platform_5_analysts" {
  user   = aws_iam_user.mei_silva7698.name
  groups = [aws_iam_group.platform_5_analysts.name]
}

resource "aws_iam_user" "mei_smith" {
  name = "fenlum-1bmogc-mei.smith"
}

resource "aws_iam_user_login_profile" "mei_smith" {
  user                    = aws_iam_user.mei_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_smith__data_eng_5_devs" {
  user   = aws_iam_user.mei_smith.name
  groups = [aws_iam_group.data_eng_5_devs.name]
}

resource "aws_iam_user" "mike_ali" {
  name = "fenlum-1bmogc-mike.ali"
}

resource "aws_iam_user_group_membership" "mike_ali__ledger_4_devs" {
  user   = aws_iam_user.mike_ali.name
  groups = [aws_iam_group.ledger_4_devs.name]
}

resource "aws_iam_user" "mike_chen" {
  name = "fenlum-1bmogc-mike.chen"
}

resource "aws_iam_user_login_profile" "mike_chen" {
  user                    = aws_iam_user.mike_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_chen__mobile_3_devs" {
  user   = aws_iam_user.mike_chen.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user_group_membership" "mike_chen__ledger_5_analysts" {
  user   = aws_iam_user.mike_chen.name
  groups = [aws_iam_group.ledger_5_analysts.name]
}

resource "aws_iam_user" "mike_cohen" {
  name = "fenlum-1bmogc-mike.cohen"
}

resource "aws_iam_user_group_membership" "mike_cohen__fraud_6_analysts" {
  user   = aws_iam_user.mike_cohen.name
  groups = [aws_iam_group.fraud_6_analysts.name]
}

resource "aws_iam_user" "mike_davis" {
  name = "fenlum-1bmogc-mike.davis"
}

resource "aws_iam_user_login_profile" "mike_davis" {
  user                    = aws_iam_user.mike_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_davis__platform_2_devs" {
  user   = aws_iam_user.mike_davis.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user_group_membership" "mike_davis__mobile_6_analysts" {
  user   = aws_iam_user.mike_davis.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "mike_dubois" {
  name = "fenlum-1bmogc-mike.dubois"
}

resource "aws_iam_user_login_profile" "mike_dubois" {
  user                    = aws_iam_user.mike_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_dubois__trading_devs" {
  user   = aws_iam_user.mike_dubois.name
  groups = [aws_iam_group.trading_devs.name]
}

resource "aws_iam_user" "mike_gupta" {
  name = "fenlum-1bmogc-mike.gupta"
}

resource "aws_iam_user_login_profile" "mike_gupta" {
  user                    = aws_iam_user.mike_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_gupta__fraud_2_devs" {
  user   = aws_iam_user.mike_gupta.name
  groups = [aws_iam_group.fraud_2_devs.name]
}

resource "aws_iam_user" "mike_haddad" {
  name = "fenlum-1bmogc-mike.haddad"
}

resource "aws_iam_user_login_profile" "mike_haddad" {
  user                    = aws_iam_user.mike_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_haddad__platform_3_devs" {
  user   = aws_iam_user.mike_haddad.name
  groups = [aws_iam_group.platform_3_devs.name]
}

resource "aws_iam_user_group_membership" "mike_haddad__kyc_3_analysts" {
  user   = aws_iam_user.mike_haddad.name
  groups = [aws_iam_group.kyc_3_analysts.name]
}

resource "aws_iam_user" "mike_ivanov" {
  name = "fenlum-1bmogc-mike.ivanov"
}

resource "aws_iam_user_login_profile" "mike_ivanov" {
  user                    = aws_iam_user.mike_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_ivanov__fraud_7_devs" {
  user   = aws_iam_user.mike_ivanov.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user" "mike_ivanov2804" {
  name = "fenlum-1bmogc-mike.ivanov2804"
}

resource "aws_iam_user_login_profile" "mike_ivanov2804" {
  user                    = aws_iam_user.mike_ivanov2804.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_ivanov2804__lending_4_devs" {
  user   = aws_iam_user.mike_ivanov2804.name
  groups = [aws_iam_group.lending_4_devs.name]
}

resource "aws_iam_user" "mike_ivanov9916" {
  name = "fenlum-1bmogc-mike.ivanov9916"
}

resource "aws_iam_user_login_profile" "mike_ivanov9916" {
  user                    = aws_iam_user.mike_ivanov9916.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_ivanov9916__platform_2_devs" {
  user   = aws_iam_user.mike_ivanov9916.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user" "mike_jones" {
  name = "fenlum-1bmogc-mike.jones"
}

resource "aws_iam_user_login_profile" "mike_jones" {
  user                    = aws_iam_user.mike_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_jones__reporting_5_analysts" {
  user   = aws_iam_user.mike_jones.name
  groups = [aws_iam_group.reporting_5_analysts.name]
}

resource "aws_iam_user" "mike_khan" {
  name = "fenlum-1bmogc-mike.khan"
}

resource "aws_iam_user_login_profile" "mike_khan" {
  user                    = aws_iam_user.mike_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_khan__treasury_7_analysts" {
  user   = aws_iam_user.mike_khan.name
  groups = [aws_iam_group.treasury_7_analysts.name]
}

resource "aws_iam_user" "mike_kim" {
  name = "fenlum-1bmogc-mike.kim"
}

resource "aws_iam_user_login_profile" "mike_kim" {
  user                    = aws_iam_user.mike_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_kim__kyc_6_devs" {
  user   = aws_iam_user.mike_kim.name
  groups = [aws_iam_group.kyc_6_devs.name]
}

resource "aws_iam_user" "mike_kim1629" {
  name = "fenlum-1bmogc-mike.kim1629"
}

resource "aws_iam_user_login_profile" "mike_kim1629" {
  user                    = aws_iam_user.mike_kim1629.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_kim1629__kyc_5_analysts" {
  user   = aws_iam_user.mike_kim1629.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "mike_larsen" {
  name = "fenlum-1bmogc-mike.larsen"
}

resource "aws_iam_user_login_profile" "mike_larsen" {
  user                    = aws_iam_user.mike_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_larsen__treasury_7_devs" {
  user   = aws_iam_user.mike_larsen.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "mike_lopez" {
  name = "fenlum-1bmogc-mike.lopez"
}

resource "aws_iam_user_login_profile" "mike_lopez" {
  user                    = aws_iam_user.mike_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_lopez__fraud_7_devs" {
  user   = aws_iam_user.mike_lopez.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user_group_membership" "mike_lopez__mobile_analysts" {
  user   = aws_iam_user.mike_lopez.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "mike_mehta" {
  name = "fenlum-1bmogc-mike.mehta"
}

resource "aws_iam_user_login_profile" "mike_mehta" {
  user                    = aws_iam_user.mike_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_mehta__fraud_6_analysts" {
  user   = aws_iam_user.mike_mehta.name
  groups = [aws_iam_group.fraud_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "mike_mehta__base_readonly" {
  user       = aws_iam_user.mike_mehta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mike_miller" {
  name = "fenlum-1bmogc-mike.miller"
}

resource "aws_iam_user_login_profile" "mike_miller" {
  user                    = aws_iam_user.mike_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_miller__risk_2_analysts" {
  user   = aws_iam_user.mike_miller.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user" "mike_muller" {
  name = "fenlum-1bmogc-mike.muller"
}

resource "aws_iam_user_login_profile" "mike_muller" {
  user                    = aws_iam_user.mike_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_muller__risk_3_devs" {
  user   = aws_iam_user.mike_muller.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "mike_muller__base_readonly" {
  user       = aws_iam_user.mike_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mike_novak" {
  name = "fenlum-1bmogc-mike.novak"
}

resource "aws_iam_user_login_profile" "mike_novak" {
  user                    = aws_iam_user.mike_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_novak__fraud_7_devs" {
  user   = aws_iam_user.mike_novak.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user" "mike_okafor" {
  name = "fenlum-1bmogc-mike.okafor"
}

resource "aws_iam_user_login_profile" "mike_okafor" {
  user                    = aws_iam_user.mike_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_okafor__lending_7_devs" {
  user   = aws_iam_user.mike_okafor.name
  groups = [aws_iam_group.lending_7_devs.name]
}

resource "aws_iam_user" "mike_okafor4936" {
  name = "fenlum-1bmogc-mike.okafor4936"
}

resource "aws_iam_user_login_profile" "mike_okafor4936" {
  user                    = aws_iam_user.mike_okafor4936.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_okafor4936__kyc_7_devs" {
  user   = aws_iam_user.mike_okafor4936.name
  groups = [aws_iam_group.kyc_7_devs.name]
}

resource "aws_iam_user" "mike_okafor6149" {
  name = "fenlum-1bmogc-mike.okafor6149"
}

resource "aws_iam_user_login_profile" "mike_okafor6149" {
  user                    = aws_iam_user.mike_okafor6149.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_okafor6149__fraud_devs" {
  user   = aws_iam_user.mike_okafor6149.name
  groups = [aws_iam_group.fraud_devs.name]
}

resource "aws_iam_user_group_membership" "mike_okafor6149__mobile_analysts" {
  user   = aws_iam_user.mike_okafor6149.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "mike_okafor7297" {
  name = "fenlum-1bmogc-mike.okafor7297"
}

resource "aws_iam_user_login_profile" "mike_okafor7297" {
  user                    = aws_iam_user.mike_okafor7297.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_okafor7297__kyc_devs" {
  user   = aws_iam_user.mike_okafor7297.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user" "mike_patel" {
  name = "fenlum-1bmogc-mike.patel"
}

resource "aws_iam_user_login_profile" "mike_patel" {
  user                    = aws_iam_user.mike_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_patel__platform_2_devs" {
  user   = aws_iam_user.mike_patel.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user" "mike_reddy" {
  name = "fenlum-1bmogc-mike.reddy"
}

resource "aws_iam_user_group_membership" "mike_reddy__data_eng_devs" {
  user   = aws_iam_user.mike_reddy.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user_group_membership" "mike_reddy__trading_analysts" {
  user   = aws_iam_user.mike_reddy.name
  groups = [aws_iam_group.trading_analysts.name]
}

resource "aws_iam_user" "mike_rossi" {
  name = "fenlum-1bmogc-mike.rossi"
}

resource "aws_iam_user_login_profile" "mike_rossi" {
  user                    = aws_iam_user.mike_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_rossi__risk_devs" {
  user   = aws_iam_user.mike_rossi.name
  groups = [aws_iam_group.risk_devs.name]
}

resource "aws_iam_user" "mike_rossi7011" {
  name = "fenlum-1bmogc-mike.rossi7011"
}

resource "aws_iam_user_login_profile" "mike_rossi7011" {
  user                    = aws_iam_user.mike_rossi7011.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_rossi7011__platform_4_devs" {
  user   = aws_iam_user.mike_rossi7011.name
  groups = [aws_iam_group.platform_4_devs.name]
}

resource "aws_iam_user" "mike_sato" {
  name = "fenlum-1bmogc-mike.sato"
}

resource "aws_iam_user_login_profile" "mike_sato" {
  user                    = aws_iam_user.mike_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_sato__trading_6_devs" {
  user   = aws_iam_user.mike_sato.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user_group_membership" "mike_sato__ledger_6_analysts" {
  user   = aws_iam_user.mike_sato.name
  groups = [aws_iam_group.ledger_6_analysts.name]
}

resource "aws_iam_user" "mike_sato7627" {
  name = "fenlum-1bmogc-mike.sato7627"
}

resource "aws_iam_user_group_membership" "mike_sato7627__kyc_5_devs" {
  user   = aws_iam_user.mike_sato7627.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "mike_sato9872" {
  name = "fenlum-1bmogc-mike.sato9872"
}

resource "aws_iam_user_login_profile" "mike_sato9872" {
  user                    = aws_iam_user.mike_sato9872.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_sato9872__payments_2_devs" {
  user   = aws_iam_user.mike_sato9872.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user" "mike_singh" {
  name = "fenlum-1bmogc-mike.singh"
}

resource "aws_iam_user_login_profile" "mike_singh" {
  user                    = aws_iam_user.mike_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_singh__lending_3_analysts" {
  user   = aws_iam_user.mike_singh.name
  groups = [aws_iam_group.lending_3_analysts.name]
}

resource "aws_iam_user" "mike_smith" {
  name = "fenlum-1bmogc-mike.smith"
}

resource "aws_iam_user_login_profile" "mike_smith" {
  user                    = aws_iam_user.mike_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_smith__treasury_2_devs" {
  user   = aws_iam_user.mike_smith.name
  groups = [aws_iam_group.treasury_2_devs.name]
}

resource "aws_iam_user" "mike_tanaka" {
  name = "fenlum-1bmogc-mike.tanaka"
}

resource "aws_iam_user_login_profile" "mike_tanaka" {
  user                    = aws_iam_user.mike_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mike_tanaka__risk_3_devs" {
  user   = aws_iam_user.mike_tanaka.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user" "mike_wong" {
  name = "fenlum-1bmogc-mike.wong"
}

resource "aws_iam_user_group_membership" "mike_wong__data_eng_5_analysts" {
  user   = aws_iam_user.mike_wong.name
  groups = [aws_iam_group.data_eng_5_analysts.name]
}

resource "aws_iam_user" "nina_ali" {
  name = "fenlum-1bmogc-nina.ali"
}

resource "aws_iam_user_login_profile" "nina_ali" {
  user                    = aws_iam_user.nina_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_ali__lending_6_devs" {
  user   = aws_iam_user.nina_ali.name
  groups = [aws_iam_group.lending_6_devs.name]
}

resource "aws_iam_user_group_membership" "nina_ali__mobile_5_analysts" {
  user   = aws_iam_user.nina_ali.name
  groups = [aws_iam_group.mobile_5_analysts.name]
}

resource "aws_iam_user" "nina_chen" {
  name = "fenlum-1bmogc-nina.chen"
}

resource "aws_iam_user_login_profile" "nina_chen" {
  user                    = aws_iam_user.nina_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_chen__payments_3_devs" {
  user   = aws_iam_user.nina_chen.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "nina_chen2085" {
  name = "fenlum-1bmogc-nina.chen2085"
}

resource "aws_iam_user_login_profile" "nina_chen2085" {
  user                    = aws_iam_user.nina_chen2085.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_chen2085__risk_analysts" {
  user   = aws_iam_user.nina_chen2085.name
  groups = [aws_iam_group.risk_analysts.name]
}

resource "aws_iam_user" "nina_cohen" {
  name = "fenlum-1bmogc-nina.cohen"
}

resource "aws_iam_user_group_membership" "nina_cohen__risk_3_analysts" {
  user   = aws_iam_user.nina_cohen.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user" "nina_garcia" {
  name = "fenlum-1bmogc-nina.garcia"
}

resource "aws_iam_user_login_profile" "nina_garcia" {
  user                    = aws_iam_user.nina_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_garcia__reporting_4_devs" {
  user   = aws_iam_user.nina_garcia.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user" "nina_gupta" {
  name = "fenlum-1bmogc-nina.gupta"
}

resource "aws_iam_user_login_profile" "nina_gupta" {
  user                    = aws_iam_user.nina_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_gupta__reporting_6_analysts" {
  user   = aws_iam_user.nina_gupta.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user" "nina_gupta575" {
  name = "fenlum-1bmogc-nina.gupta575"
}

resource "aws_iam_user_login_profile" "nina_gupta575" {
  user                    = aws_iam_user.nina_gupta575.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_gupta575__platform_5_analysts" {
  user   = aws_iam_user.nina_gupta575.name
  groups = [aws_iam_group.platform_5_analysts.name]
}

resource "aws_iam_user" "nina_jones" {
  name = "fenlum-1bmogc-nina.jones"
}

resource "aws_iam_user_login_profile" "nina_jones" {
  user                    = aws_iam_user.nina_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_jones__fraud_7_devs" {
  user   = aws_iam_user.nina_jones.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user_group_membership" "nina_jones__payments_3_analysts" {
  user   = aws_iam_user.nina_jones.name
  groups = [aws_iam_group.payments_3_analysts.name]
}

resource "aws_iam_user" "nina_kim" {
  name = "fenlum-1bmogc-nina.kim"
}

resource "aws_iam_user_group_membership" "nina_kim__trading_devs" {
  user   = aws_iam_user.nina_kim.name
  groups = [aws_iam_group.trading_devs.name]
}

resource "aws_iam_user_group_membership" "nina_kim__risk_5_analysts" {
  user   = aws_iam_user.nina_kim.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user" "nina_larsen" {
  name = "fenlum-1bmogc-nina.larsen"
}

resource "aws_iam_user_login_profile" "nina_larsen" {
  user                    = aws_iam_user.nina_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_larsen__treasury_6_devs" {
  user   = aws_iam_user.nina_larsen.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user" "nina_larsen1263" {
  name = "fenlum-1bmogc-nina.larsen1263"
}

resource "aws_iam_user_login_profile" "nina_larsen1263" {
  user                    = aws_iam_user.nina_larsen1263.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_larsen1263__kyc_6_devs" {
  user   = aws_iam_user.nina_larsen1263.name
  groups = [aws_iam_group.kyc_6_devs.name]
}

resource "aws_iam_user_group_membership" "nina_larsen1263__kyc_analysts" {
  user   = aws_iam_user.nina_larsen1263.name
  groups = [aws_iam_group.kyc_analysts.name]
}

resource "aws_iam_user" "nina_larsen4141" {
  name = "fenlum-1bmogc-nina.larsen4141"
}

resource "aws_iam_user_group_membership" "nina_larsen4141__trading_analysts" {
  user   = aws_iam_user.nina_larsen4141.name
  groups = [aws_iam_group.trading_analysts.name]
}

resource "aws_iam_user" "nina_larsen4709" {
  name = "fenlum-1bmogc-nina.larsen4709"
}

resource "aws_iam_user_login_profile" "nina_larsen4709" {
  user                    = aws_iam_user.nina_larsen4709.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_larsen4709__risk_2_devs" {
  user   = aws_iam_user.nina_larsen4709.name
  groups = [aws_iam_group.risk_2_devs.name]
}

resource "aws_iam_user" "nina_lopez" {
  name = "fenlum-1bmogc-nina.lopez"
}

resource "aws_iam_user_login_profile" "nina_lopez" {
  user                    = aws_iam_user.nina_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_lopez__risk_2_analysts" {
  user   = aws_iam_user.nina_lopez.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user" "nina_mehta" {
  name = "fenlum-1bmogc-nina.mehta"
}

resource "aws_iam_user_login_profile" "nina_mehta" {
  user                    = aws_iam_user.nina_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_mehta__risk_3_analysts" {
  user   = aws_iam_user.nina_mehta.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user" "nina_nguyen" {
  name = "fenlum-1bmogc-nina.nguyen"
}

resource "aws_iam_user_login_profile" "nina_nguyen" {
  user                    = aws_iam_user.nina_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_nguyen__payments_2_devs" {
  user   = aws_iam_user.nina_nguyen.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user" "nina_okafor" {
  name = "fenlum-1bmogc-nina.okafor"
}

resource "aws_iam_user_login_profile" "nina_okafor" {
  user                    = aws_iam_user.nina_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_okafor__data_eng_2_devs" {
  user   = aws_iam_user.nina_okafor.name
  groups = [aws_iam_group.data_eng_2_devs.name]
}

resource "aws_iam_user" "nina_patel" {
  name = "fenlum-1bmogc-nina.patel"
}

resource "aws_iam_user_group_membership" "nina_patel__treasury_devs" {
  user   = aws_iam_user.nina_patel.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "nina_reddy" {
  name = "fenlum-1bmogc-nina.reddy"
}

resource "aws_iam_user_login_profile" "nina_reddy" {
  user                    = aws_iam_user.nina_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_reddy__risk_4_devs" {
  user   = aws_iam_user.nina_reddy.name
  groups = [aws_iam_group.risk_4_devs.name]
}

resource "aws_iam_user" "nina_singh" {
  name = "fenlum-1bmogc-nina.singh"
}

resource "aws_iam_user_login_profile" "nina_singh" {
  user                    = aws_iam_user.nina_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_singh__treasury_4_devs" {
  user   = aws_iam_user.nina_singh.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user" "nina_singh3241" {
  name = "fenlum-1bmogc-nina.singh3241"
}

resource "aws_iam_user_group_membership" "nina_singh3241__reporting_4_devs" {
  user   = aws_iam_user.nina_singh3241.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user" "nina_singh9920" {
  name = "fenlum-1bmogc-nina.singh9920"
}

resource "aws_iam_user_login_profile" "nina_singh9920" {
  user                    = aws_iam_user.nina_singh9920.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_singh9920__kyc_3_devs" {
  user   = aws_iam_user.nina_singh9920.name
  groups = [aws_iam_group.kyc_3_devs.name]
}

resource "aws_iam_user" "nina_smith" {
  name = "fenlum-1bmogc-nina.smith"
}

resource "aws_iam_user_login_profile" "nina_smith" {
  user                    = aws_iam_user.nina_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_smith__treasury_6_devs" {
  user   = aws_iam_user.nina_smith.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user_group_membership" "nina_smith__lending_6_analysts" {
  user   = aws_iam_user.nina_smith.name
  groups = [aws_iam_group.lending_6_analysts.name]
}

resource "aws_iam_user" "nina_wong" {
  name = "fenlum-1bmogc-nina.wong"
}

resource "aws_iam_user_login_profile" "nina_wong" {
  user                    = aws_iam_user.nina_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_wong__kyc_5_devs" {
  user   = aws_iam_user.nina_wong.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "noor_brown" {
  name = "fenlum-1bmogc-noor.brown"
}

resource "aws_iam_user_login_profile" "noor_brown" {
  user                    = aws_iam_user.noor_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_brown__ledger_2_devs" {
  user   = aws_iam_user.noor_brown.name
  groups = [aws_iam_group.ledger_2_devs.name]
}

resource "aws_iam_user" "noor_brown8541" {
  name = "fenlum-1bmogc-noor.brown8541"
}

resource "aws_iam_user_login_profile" "noor_brown8541" {
  user                    = aws_iam_user.noor_brown8541.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_brown8541__risk_5_devs" {
  user   = aws_iam_user.noor_brown8541.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user" "noor_dubois" {
  name = "fenlum-1bmogc-noor.dubois"
}

resource "aws_iam_user_login_profile" "noor_dubois" {
  user                    = aws_iam_user.noor_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_dubois__reporting_2_devs" {
  user   = aws_iam_user.noor_dubois.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "noor_garcia" {
  name = "fenlum-1bmogc-noor.garcia"
}

resource "aws_iam_user_login_profile" "noor_garcia" {
  user                    = aws_iam_user.noor_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_garcia__treasury_6_devs" {
  user   = aws_iam_user.noor_garcia.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user" "noor_haddad" {
  name = "fenlum-1bmogc-noor.haddad"
}

resource "aws_iam_user_login_profile" "noor_haddad" {
  user                    = aws_iam_user.noor_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_haddad__data_eng_4_devs" {
  user   = aws_iam_user.noor_haddad.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user" "noor_ivanov" {
  name = "fenlum-1bmogc-noor.ivanov"
}

resource "aws_iam_user_group_membership" "noor_ivanov__mobile_4_devs" {
  user   = aws_iam_user.noor_ivanov.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "noor_ivanov1488" {
  name = "fenlum-1bmogc-noor.ivanov1488"
}

resource "aws_iam_user_login_profile" "noor_ivanov1488" {
  user                    = aws_iam_user.noor_ivanov1488.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_ivanov1488__trading_6_analysts" {
  user   = aws_iam_user.noor_ivanov1488.name
  groups = [aws_iam_group.trading_6_analysts.name]
}

resource "aws_iam_user" "noor_jones" {
  name = "fenlum-1bmogc-noor.jones"
}

resource "aws_iam_user_login_profile" "noor_jones" {
  user                    = aws_iam_user.noor_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_jones__ledger_5_devs" {
  user   = aws_iam_user.noor_jones.name
  groups = [aws_iam_group.ledger_5_devs.name]
}

resource "aws_iam_user_group_membership" "noor_jones__kyc_5_analysts" {
  user   = aws_iam_user.noor_jones.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user" "noor_lopez" {
  name = "fenlum-1bmogc-noor.lopez"
}

resource "aws_iam_user_group_membership" "noor_lopez__platform_5_devs" {
  user   = aws_iam_user.noor_lopez.name
  groups = [aws_iam_group.platform_5_devs.name]
}

resource "aws_iam_user" "noor_lopez4497" {
  name = "fenlum-1bmogc-noor.lopez4497"
}

resource "aws_iam_user_login_profile" "noor_lopez4497" {
  user                    = aws_iam_user.noor_lopez4497.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_lopez4497__platform_devs" {
  user   = aws_iam_user.noor_lopez4497.name
  groups = [aws_iam_group.platform_devs.name]
}

resource "aws_iam_user" "noor_miller" {
  name = "fenlum-1bmogc-noor.miller"
}

resource "aws_iam_user_login_profile" "noor_miller" {
  user                    = aws_iam_user.noor_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_miller__kyc_5_devs" {
  user   = aws_iam_user.noor_miller.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "noor_okafor" {
  name = "fenlum-1bmogc-noor.okafor"
}

resource "aws_iam_user_group_membership" "noor_okafor__ledger_5_devs" {
  user   = aws_iam_user.noor_okafor.name
  groups = [aws_iam_group.ledger_5_devs.name]
}

resource "aws_iam_user_group_membership" "noor_okafor__data_eng_5_analysts" {
  user   = aws_iam_user.noor_okafor.name
  groups = [aws_iam_group.data_eng_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "noor_okafor__base_readonly" {
  user       = aws_iam_user.noor_okafor.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "noor_patel" {
  name = "fenlum-1bmogc-noor.patel"
}

resource "aws_iam_user_login_profile" "noor_patel" {
  user                    = aws_iam_user.noor_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_patel__kyc_6_devs" {
  user   = aws_iam_user.noor_patel.name
  groups = [aws_iam_group.kyc_6_devs.name]
}

resource "aws_iam_user" "noor_silva" {
  name = "fenlum-1bmogc-noor.silva"
}

resource "aws_iam_user_login_profile" "noor_silva" {
  user                    = aws_iam_user.noor_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_silva__risk_2_devs" {
  user   = aws_iam_user.noor_silva.name
  groups = [aws_iam_group.risk_2_devs.name]
}

resource "aws_iam_user" "noor_smith" {
  name = "fenlum-1bmogc-noor.smith"
}

resource "aws_iam_user_login_profile" "noor_smith" {
  user                    = aws_iam_user.noor_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_smith__payments_2_devs" {
  user   = aws_iam_user.noor_smith.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user" "omar_brown" {
  name = "fenlum-1bmogc-omar.brown"
}

resource "aws_iam_user_login_profile" "omar_brown" {
  user                    = aws_iam_user.omar_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_brown__mobile_analysts" {
  user   = aws_iam_user.omar_brown.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "omar_brown1979" {
  name = "fenlum-1bmogc-omar.brown1979"
}

resource "aws_iam_user_login_profile" "omar_brown1979" {
  user                    = aws_iam_user.omar_brown1979.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_brown1979__treasury_7_devs" {
  user   = aws_iam_user.omar_brown1979.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "omar_brown2833" {
  name = "fenlum-1bmogc-omar.brown2833"
}

resource "aws_iam_user_login_profile" "omar_brown2833" {
  user                    = aws_iam_user.omar_brown2833.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_brown2833__data_eng_5_devs" {
  user   = aws_iam_user.omar_brown2833.name
  groups = [aws_iam_group.data_eng_5_devs.name]
}

resource "aws_iam_user" "omar_brown6341" {
  name = "fenlum-1bmogc-omar.brown6341"
}

resource "aws_iam_user_login_profile" "omar_brown6341" {
  user                    = aws_iam_user.omar_brown6341.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_brown6341__trading_3_devs" {
  user   = aws_iam_user.omar_brown6341.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user" "omar_chen" {
  name = "fenlum-1bmogc-omar.chen"
}

resource "aws_iam_user_login_profile" "omar_chen" {
  user                    = aws_iam_user.omar_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_chen__reporting_6_devs" {
  user   = aws_iam_user.omar_chen.name
  groups = [aws_iam_group.reporting_6_devs.name]
}

resource "aws_iam_user" "omar_chen3036" {
  name = "fenlum-1bmogc-omar.chen3036"
}

resource "aws_iam_user_group_membership" "omar_chen3036__data_eng_4_analysts" {
  user   = aws_iam_user.omar_chen3036.name
  groups = [aws_iam_group.data_eng_4_analysts.name]
}

resource "aws_iam_user_group_membership" "omar_chen3036__risk_2_analysts" {
  user   = aws_iam_user.omar_chen3036.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user" "omar_chen3765" {
  name = "fenlum-1bmogc-omar.chen3765"
}

resource "aws_iam_user_login_profile" "omar_chen3765" {
  user                    = aws_iam_user.omar_chen3765.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_chen3765__ledger_6_devs" {
  user   = aws_iam_user.omar_chen3765.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user" "omar_cohen" {
  name = "fenlum-1bmogc-omar.cohen"
}

resource "aws_iam_user_login_profile" "omar_cohen" {
  user                    = aws_iam_user.omar_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_cohen__treasury_devs" {
  user   = aws_iam_user.omar_cohen.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "omar_davis" {
  name = "fenlum-1bmogc-omar.davis"
}

resource "aws_iam_user_login_profile" "omar_davis" {
  user                    = aws_iam_user.omar_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_davis__trading_5_analysts" {
  user   = aws_iam_user.omar_davis.name
  groups = [aws_iam_group.trading_5_analysts.name]
}

resource "aws_iam_user" "omar_dubois" {
  name = "fenlum-1bmogc-omar.dubois"
}

resource "aws_iam_user_login_profile" "omar_dubois" {
  user                    = aws_iam_user.omar_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_dubois__platform_2_devs" {
  user   = aws_iam_user.omar_dubois.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "omar_dubois__base_readonly" {
  user       = aws_iam_user.omar_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "omar_dubois8052" {
  name = "fenlum-1bmogc-omar.dubois8052"
}

resource "aws_iam_user_login_profile" "omar_dubois8052" {
  user                    = aws_iam_user.omar_dubois8052.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_dubois8052__treasury_devs" {
  user   = aws_iam_user.omar_dubois8052.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "omar_garcia" {
  name = "fenlum-1bmogc-omar.garcia"
}

resource "aws_iam_user_login_profile" "omar_garcia" {
  user                    = aws_iam_user.omar_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_garcia__platform_analysts" {
  user   = aws_iam_user.omar_garcia.name
  groups = [aws_iam_group.platform_analysts.name]
}

resource "aws_iam_user" "omar_garcia5200" {
  name = "fenlum-1bmogc-omar.garcia5200"
}

resource "aws_iam_user_login_profile" "omar_garcia5200" {
  user                    = aws_iam_user.omar_garcia5200.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_garcia5200__lending_7_analysts" {
  user   = aws_iam_user.omar_garcia5200.name
  groups = [aws_iam_group.lending_7_analysts.name]
}

resource "aws_iam_user" "omar_haddad" {
  name = "fenlum-1bmogc-omar.haddad"
}

resource "aws_iam_user_login_profile" "omar_haddad" {
  user                    = aws_iam_user.omar_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_haddad__payments_6_devs" {
  user   = aws_iam_user.omar_haddad.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "omar_ivanov" {
  name = "fenlum-1bmogc-omar.ivanov"
}

resource "aws_iam_user_login_profile" "omar_ivanov" {
  user                    = aws_iam_user.omar_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_ivanov__data_eng_6_devs" {
  user   = aws_iam_user.omar_ivanov.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user" "omar_jones" {
  name = "fenlum-1bmogc-omar.jones"
}

resource "aws_iam_user_login_profile" "omar_jones" {
  user                    = aws_iam_user.omar_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_jones__fraud_4_devs" {
  user   = aws_iam_user.omar_jones.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user" "omar_khan" {
  name = "fenlum-1bmogc-omar.khan"
}

resource "aws_iam_user_login_profile" "omar_khan" {
  user                    = aws_iam_user.omar_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_khan__data_eng_4_devs" {
  user   = aws_iam_user.omar_khan.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user_group_membership" "omar_khan__risk_5_analysts" {
  user   = aws_iam_user.omar_khan.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user" "omar_larsen" {
  name = "fenlum-1bmogc-omar.larsen"
}

resource "aws_iam_user_group_membership" "omar_larsen__trading_devs" {
  user   = aws_iam_user.omar_larsen.name
  groups = [aws_iam_group.trading_devs.name]
}

resource "aws_iam_user" "omar_lopez" {
  name = "fenlum-1bmogc-omar.lopez"
}

resource "aws_iam_user_group_membership" "omar_lopez__kyc_6_devs" {
  user   = aws_iam_user.omar_lopez.name
  groups = [aws_iam_group.kyc_6_devs.name]
}

resource "aws_iam_user" "omar_miller" {
  name = "fenlum-1bmogc-omar.miller"
}

resource "aws_iam_user_group_membership" "omar_miller__treasury_devs" {
  user   = aws_iam_user.omar_miller.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "omar_reddy" {
  name = "fenlum-1bmogc-omar.reddy"
}

resource "aws_iam_user_login_profile" "omar_reddy" {
  user                    = aws_iam_user.omar_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_reddy__treasury_4_devs" {
  user   = aws_iam_user.omar_reddy.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user" "omar_reddy853" {
  name = "fenlum-1bmogc-omar.reddy853"
}

resource "aws_iam_user_login_profile" "omar_reddy853" {
  user                    = aws_iam_user.omar_reddy853.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_reddy853__risk_analysts" {
  user   = aws_iam_user.omar_reddy853.name
  groups = [aws_iam_group.risk_analysts.name]
}

resource "aws_iam_user" "omar_rossi" {
  name = "fenlum-1bmogc-omar.rossi"
}

resource "aws_iam_user_group_membership" "omar_rossi__lending_4_devs" {
  user   = aws_iam_user.omar_rossi.name
  groups = [aws_iam_group.lending_4_devs.name]
}

resource "aws_iam_user" "omar_rossi7704" {
  name = "fenlum-1bmogc-omar.rossi7704"
}

resource "aws_iam_user_login_profile" "omar_rossi7704" {
  user                    = aws_iam_user.omar_rossi7704.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_rossi7704__ledger_devs" {
  user   = aws_iam_user.omar_rossi7704.name
  groups = [aws_iam_group.ledger_devs.name]
}

resource "aws_iam_user" "omar_smith" {
  name = "fenlum-1bmogc-omar.smith"
}

resource "aws_iam_user_login_profile" "omar_smith" {
  user                    = aws_iam_user.omar_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_smith__risk_3_devs" {
  user   = aws_iam_user.omar_smith.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user" "omar_tanaka" {
  name = "fenlum-1bmogc-omar.tanaka"
}

resource "aws_iam_user_login_profile" "omar_tanaka" {
  user                    = aws_iam_user.omar_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_tanaka__kyc_7_devs" {
  user   = aws_iam_user.omar_tanaka.name
  groups = [aws_iam_group.kyc_7_devs.name]
}

resource "aws_iam_user_group_membership" "omar_tanaka__treasury_4_analysts" {
  user   = aws_iam_user.omar_tanaka.name
  groups = [aws_iam_group.treasury_4_analysts.name]
}

resource "aws_iam_user" "omar_tanaka773" {
  name = "fenlum-1bmogc-omar.tanaka773"
}

resource "aws_iam_user_login_profile" "omar_tanaka773" {
  user                    = aws_iam_user.omar_tanaka773.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_tanaka773__payments_devs" {
  user   = aws_iam_user.omar_tanaka773.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user_policy_attachment" "omar_tanaka773__base_readonly" {
  user       = aws_iam_user.omar_tanaka773.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "priya_ali" {
  name = "fenlum-1bmogc-priya.ali"
}

resource "aws_iam_user_login_profile" "priya_ali" {
  user                    = aws_iam_user.priya_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_ali__ledger_4_analysts" {
  user   = aws_iam_user.priya_ali.name
  groups = [aws_iam_group.ledger_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "priya_ali__base_readonly" {
  user       = aws_iam_user.priya_ali.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "priya_chen" {
  name = "fenlum-1bmogc-priya.chen"
}

resource "aws_iam_user_login_profile" "priya_chen" {
  user                    = aws_iam_user.priya_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_chen__reporting_4_analysts" {
  user   = aws_iam_user.priya_chen.name
  groups = [aws_iam_group.reporting_4_analysts.name]
}

resource "aws_iam_user" "priya_cohen" {
  name = "fenlum-1bmogc-priya.cohen"
}

resource "aws_iam_user_group_membership" "priya_cohen__lending_3_analysts" {
  user   = aws_iam_user.priya_cohen.name
  groups = [aws_iam_group.lending_3_analysts.name]
}

resource "aws_iam_user_group_membership" "priya_cohen__risk_5_analysts" {
  user   = aws_iam_user.priya_cohen.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user" "priya_davis" {
  name = "fenlum-1bmogc-priya.davis"
}

resource "aws_iam_user_login_profile" "priya_davis" {
  user                    = aws_iam_user.priya_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_davis__platform_4_devs" {
  user   = aws_iam_user.priya_davis.name
  groups = [aws_iam_group.platform_4_devs.name]
}

resource "aws_iam_user" "priya_dubois" {
  name = "fenlum-1bmogc-priya.dubois"
}

resource "aws_iam_user_login_profile" "priya_dubois" {
  user                    = aws_iam_user.priya_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_dubois__ledger_6_devs" {
  user   = aws_iam_user.priya_dubois.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "priya_dubois__base_readonly" {
  user       = aws_iam_user.priya_dubois.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "priya_garcia" {
  name = "fenlum-1bmogc-priya.garcia"
}

resource "aws_iam_user_login_profile" "priya_garcia" {
  user                    = aws_iam_user.priya_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_garcia__treasury_devs" {
  user   = aws_iam_user.priya_garcia.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user" "priya_gupta" {
  name = "fenlum-1bmogc-priya.gupta"
}

resource "aws_iam_user_login_profile" "priya_gupta" {
  user                    = aws_iam_user.priya_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_gupta__data_eng_4_analysts" {
  user   = aws_iam_user.priya_gupta.name
  groups = [aws_iam_group.data_eng_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "priya_gupta__base_readonly" {
  user       = aws_iam_user.priya_gupta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "priya_gupta5378" {
  name = "fenlum-1bmogc-priya.gupta5378"
}

resource "aws_iam_user_login_profile" "priya_gupta5378" {
  user                    = aws_iam_user.priya_gupta5378.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_gupta5378__mobile_2_analysts" {
  user   = aws_iam_user.priya_gupta5378.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "priya_haddad" {
  name = "fenlum-1bmogc-priya.haddad"
}

resource "aws_iam_user_login_profile" "priya_haddad" {
  user                    = aws_iam_user.priya_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_haddad__mobile_devs" {
  user   = aws_iam_user.priya_haddad.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "priya_haddad3545" {
  name = "fenlum-1bmogc-priya.haddad3545"
}

resource "aws_iam_user_login_profile" "priya_haddad3545" {
  user                    = aws_iam_user.priya_haddad3545.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_haddad3545__fraud_4_devs" {
  user   = aws_iam_user.priya_haddad3545.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user" "priya_ivanov" {
  name = "fenlum-1bmogc-priya.ivanov"
}

resource "aws_iam_user_login_profile" "priya_ivanov" {
  user                    = aws_iam_user.priya_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_ivanov__risk_2_analysts" {
  user   = aws_iam_user.priya_ivanov.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user_group_membership" "priya_ivanov__reporting_5_analysts" {
  user   = aws_iam_user.priya_ivanov.name
  groups = [aws_iam_group.reporting_5_analysts.name]
}

resource "aws_iam_user" "priya_ivanov4220" {
  name = "fenlum-1bmogc-priya.ivanov4220"
}

resource "aws_iam_user_login_profile" "priya_ivanov4220" {
  user                    = aws_iam_user.priya_ivanov4220.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_ivanov4220__fraud_4_devs" {
  user   = aws_iam_user.priya_ivanov4220.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user" "priya_jones" {
  name = "fenlum-1bmogc-priya.jones"
}

resource "aws_iam_user_login_profile" "priya_jones" {
  user                    = aws_iam_user.priya_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_jones__kyc_5_analysts" {
  user   = aws_iam_user.priya_jones.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user_group_membership" "priya_jones__trading_5_analysts" {
  user   = aws_iam_user.priya_jones.name
  groups = [aws_iam_group.trading_5_analysts.name]
}

resource "aws_iam_user" "priya_kim" {
  name = "fenlum-1bmogc-priya.kim"
}

resource "aws_iam_user_login_profile" "priya_kim" {
  user                    = aws_iam_user.priya_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_kim__fraud_3_devs" {
  user   = aws_iam_user.priya_kim.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user" "priya_larsen" {
  name = "fenlum-1bmogc-priya.larsen"
}

resource "aws_iam_user_login_profile" "priya_larsen" {
  user                    = aws_iam_user.priya_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_larsen__data_eng_3_devs" {
  user   = aws_iam_user.priya_larsen.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user" "priya_miller" {
  name = "fenlum-1bmogc-priya.miller"
}

resource "aws_iam_user_login_profile" "priya_miller" {
  user                    = aws_iam_user.priya_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_miller__data_eng_6_devs" {
  user   = aws_iam_user.priya_miller.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user" "priya_muller" {
  name = "fenlum-1bmogc-priya.muller"
}

resource "aws_iam_user_group_membership" "priya_muller__fraud_7_devs" {
  user   = aws_iam_user.priya_muller.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user_group_membership" "priya_muller__ledger_4_analysts" {
  user   = aws_iam_user.priya_muller.name
  groups = [aws_iam_group.ledger_4_analysts.name]
}

resource "aws_iam_user" "priya_muller5741" {
  name = "fenlum-1bmogc-priya.muller5741"
}

resource "aws_iam_user_login_profile" "priya_muller5741" {
  user                    = aws_iam_user.priya_muller5741.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_muller5741__trading_6_devs" {
  user   = aws_iam_user.priya_muller5741.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user" "priya_nguyen" {
  name = "fenlum-1bmogc-priya.nguyen"
}

resource "aws_iam_user_group_membership" "priya_nguyen__data_eng_3_devs" {
  user   = aws_iam_user.priya_nguyen.name
  groups = [aws_iam_group.data_eng_3_devs.name]
}

resource "aws_iam_user" "priya_okafor" {
  name = "fenlum-1bmogc-priya.okafor"
}

resource "aws_iam_user_login_profile" "priya_okafor" {
  user                    = aws_iam_user.priya_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_okafor__kyc_5_analysts" {
  user   = aws_iam_user.priya_okafor.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user_group_membership" "priya_okafor__data_eng_analysts" {
  user   = aws_iam_user.priya_okafor.name
  groups = [aws_iam_group.data_eng_analysts.name]
}

resource "aws_iam_user" "priya_patel" {
  name = "fenlum-1bmogc-priya.patel"
}

resource "aws_iam_user_group_membership" "priya_patel__ledger_3_devs" {
  user   = aws_iam_user.priya_patel.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user" "priya_reddy" {
  name = "fenlum-1bmogc-priya.reddy"
}

resource "aws_iam_user_login_profile" "priya_reddy" {
  user                    = aws_iam_user.priya_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_reddy__fraud_5_devs" {
  user   = aws_iam_user.priya_reddy.name
  groups = [aws_iam_group.fraud_5_devs.name]
}

resource "aws_iam_user" "priya_reddy276" {
  name = "fenlum-1bmogc-priya.reddy276"
}

resource "aws_iam_user_login_profile" "priya_reddy276" {
  user                    = aws_iam_user.priya_reddy276.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_reddy276__kyc_analysts" {
  user   = aws_iam_user.priya_reddy276.name
  groups = [aws_iam_group.kyc_analysts.name]
}

resource "aws_iam_user_group_membership" "priya_reddy276__trading_2_analysts" {
  user   = aws_iam_user.priya_reddy276.name
  groups = [aws_iam_group.trading_2_analysts.name]
}

resource "aws_iam_user" "priya_sato" {
  name = "fenlum-1bmogc-priya.sato"
}

resource "aws_iam_user_login_profile" "priya_sato" {
  user                    = aws_iam_user.priya_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_sato__mobile_6_analysts" {
  user   = aws_iam_user.priya_sato.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "priya_silva" {
  name = "fenlum-1bmogc-priya.silva"
}

resource "aws_iam_user_login_profile" "priya_silva" {
  user                    = aws_iam_user.priya_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_silva__reporting_6_devs" {
  user   = aws_iam_user.priya_silva.name
  groups = [aws_iam_group.reporting_6_devs.name]
}

resource "aws_iam_user" "priya_singh" {
  name = "fenlum-1bmogc-priya.singh"
}

resource "aws_iam_user_login_profile" "priya_singh" {
  user                    = aws_iam_user.priya_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_singh__reporting_4_devs" {
  user   = aws_iam_user.priya_singh.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user" "priya_wong" {
  name = "fenlum-1bmogc-priya.wong"
}

resource "aws_iam_user_group_membership" "priya_wong__treasury_3_devs" {
  user   = aws_iam_user.priya_wong.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user" "priya_wong1517" {
  name = "fenlum-1bmogc-priya.wong1517"
}

resource "aws_iam_user_login_profile" "priya_wong1517" {
  user                    = aws_iam_user.priya_wong1517.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "priya_wong1517__reporting_5_devs" {
  user   = aws_iam_user.priya_wong1517.name
  groups = [aws_iam_group.reporting_5_devs.name]
}

resource "aws_iam_user_group_membership" "priya_wong1517__fraud_analysts" {
  user   = aws_iam_user.priya_wong1517.name
  groups = [aws_iam_group.fraud_analysts.name]
}

resource "aws_iam_user" "quinn_ali" {
  name = "fenlum-1bmogc-quinn.ali"
}

resource "aws_iam_user_login_profile" "quinn_ali" {
  user                    = aws_iam_user.quinn_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_ali__lending_3_devs" {
  user   = aws_iam_user.quinn_ali.name
  groups = [aws_iam_group.lending_3_devs.name]
}

resource "aws_iam_user_group_membership" "quinn_ali__treasury_4_analysts" {
  user   = aws_iam_user.quinn_ali.name
  groups = [aws_iam_group.treasury_4_analysts.name]
}

resource "aws_iam_user" "quinn_davis" {
  name = "fenlum-1bmogc-quinn.davis"
}

resource "aws_iam_user_login_profile" "quinn_davis" {
  user                    = aws_iam_user.quinn_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_davis__treasury_7_devs" {
  user   = aws_iam_user.quinn_davis.name
  groups = [aws_iam_group.treasury_7_devs.name]
}

resource "aws_iam_user" "quinn_davis7699" {
  name = "fenlum-1bmogc-quinn.davis7699"
}

resource "aws_iam_user_login_profile" "quinn_davis7699" {
  user                    = aws_iam_user.quinn_davis7699.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_davis7699__payments_7_devs" {
  user   = aws_iam_user.quinn_davis7699.name
  groups = [aws_iam_group.payments_7_devs.name]
}

resource "aws_iam_user" "quinn_gupta" {
  name = "fenlum-1bmogc-quinn.gupta"
}

resource "aws_iam_user_login_profile" "quinn_gupta" {
  user                    = aws_iam_user.quinn_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_gupta__lending_7_devs" {
  user   = aws_iam_user.quinn_gupta.name
  groups = [aws_iam_group.lending_7_devs.name]
}

resource "aws_iam_user_policy_attachment" "quinn_gupta__base_readonly" {
  user       = aws_iam_user.quinn_gupta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "quinn_haddad" {
  name = "fenlum-1bmogc-quinn.haddad"
}

resource "aws_iam_user_login_profile" "quinn_haddad" {
  user                    = aws_iam_user.quinn_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_haddad__treasury_3_devs" {
  user   = aws_iam_user.quinn_haddad.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user_group_membership" "quinn_haddad__kyc_6_analysts" {
  user   = aws_iam_user.quinn_haddad.name
  groups = [aws_iam_group.kyc_6_analysts.name]
}

resource "aws_iam_user" "quinn_ivanov" {
  name = "fenlum-1bmogc-quinn.ivanov"
}

resource "aws_iam_user_login_profile" "quinn_ivanov" {
  user                    = aws_iam_user.quinn_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_ivanov__lending_5_analysts" {
  user   = aws_iam_user.quinn_ivanov.name
  groups = [aws_iam_group.lending_5_analysts.name]
}

resource "aws_iam_user_group_membership" "quinn_ivanov__ledger_2_analysts" {
  user   = aws_iam_user.quinn_ivanov.name
  groups = [aws_iam_group.ledger_2_analysts.name]
}

resource "aws_iam_user" "quinn_jones" {
  name = "fenlum-1bmogc-quinn.jones"
}

resource "aws_iam_user_login_profile" "quinn_jones" {
  user                    = aws_iam_user.quinn_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_jones__kyc_devs" {
  user   = aws_iam_user.quinn_jones.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user" "quinn_jones2813" {
  name = "fenlum-1bmogc-quinn.jones2813"
}

resource "aws_iam_user_login_profile" "quinn_jones2813" {
  user                    = aws_iam_user.quinn_jones2813.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_jones2813__lending_devs" {
  user   = aws_iam_user.quinn_jones2813.name
  groups = [aws_iam_group.lending_devs.name]
}

resource "aws_iam_user" "quinn_lopez" {
  name = "fenlum-1bmogc-quinn.lopez"
}

resource "aws_iam_user_login_profile" "quinn_lopez" {
  user                    = aws_iam_user.quinn_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_lopez__data_eng_3_analysts" {
  user   = aws_iam_user.quinn_lopez.name
  groups = [aws_iam_group.data_eng_3_analysts.name]
}

resource "aws_iam_user_group_membership" "quinn_lopez__payments_analysts" {
  user   = aws_iam_user.quinn_lopez.name
  groups = [aws_iam_group.payments_analysts.name]
}

resource "aws_iam_user" "quinn_mehta" {
  name = "fenlum-1bmogc-quinn.mehta"
}

resource "aws_iam_user_login_profile" "quinn_mehta" {
  user                    = aws_iam_user.quinn_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_mehta__fraud_4_devs" {
  user   = aws_iam_user.quinn_mehta.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user" "quinn_miller" {
  name = "fenlum-1bmogc-quinn.miller"
}

resource "aws_iam_user_login_profile" "quinn_miller" {
  user                    = aws_iam_user.quinn_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_miller__risk_2_devs" {
  user   = aws_iam_user.quinn_miller.name
  groups = [aws_iam_group.risk_2_devs.name]
}

resource "aws_iam_user" "quinn_miller3461" {
  name = "fenlum-1bmogc-quinn.miller3461"
}

resource "aws_iam_user_login_profile" "quinn_miller3461" {
  user                    = aws_iam_user.quinn_miller3461.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_miller3461__risk_4_devs" {
  user   = aws_iam_user.quinn_miller3461.name
  groups = [aws_iam_group.risk_4_devs.name]
}

resource "aws_iam_user_group_membership" "quinn_miller3461__fraud_7_analysts" {
  user   = aws_iam_user.quinn_miller3461.name
  groups = [aws_iam_group.fraud_7_analysts.name]
}

resource "aws_iam_user" "quinn_miller6180" {
  name = "fenlum-1bmogc-quinn.miller6180"
}

resource "aws_iam_user_group_membership" "quinn_miller6180__fraud_3_devs" {
  user   = aws_iam_user.quinn_miller6180.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "quinn_miller6180__base_readonly" {
  user       = aws_iam_user.quinn_miller6180.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "quinn_okafor" {
  name = "fenlum-1bmogc-quinn.okafor"
}

resource "aws_iam_user_group_membership" "quinn_okafor__payments_analysts" {
  user   = aws_iam_user.quinn_okafor.name
  groups = [aws_iam_group.payments_analysts.name]
}

resource "aws_iam_user_group_membership" "quinn_okafor__fraud_3_analysts" {
  user   = aws_iam_user.quinn_okafor.name
  groups = [aws_iam_group.fraud_3_analysts.name]
}

resource "aws_iam_user" "quinn_patel" {
  name = "fenlum-1bmogc-quinn.patel"
}

resource "aws_iam_user_login_profile" "quinn_patel" {
  user                    = aws_iam_user.quinn_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_patel__fraud_2_devs" {
  user   = aws_iam_user.quinn_patel.name
  groups = [aws_iam_group.fraud_2_devs.name]
}

resource "aws_iam_user" "quinn_patel3610" {
  name = "fenlum-1bmogc-quinn.patel3610"
}

resource "aws_iam_user_login_profile" "quinn_patel3610" {
  user                    = aws_iam_user.quinn_patel3610.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_patel3610__reporting_4_devs" {
  user   = aws_iam_user.quinn_patel3610.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user_group_membership" "quinn_patel3610__lending_3_analysts" {
  user   = aws_iam_user.quinn_patel3610.name
  groups = [aws_iam_group.lending_3_analysts.name]
}

resource "aws_iam_user" "quinn_patel7996" {
  name = "fenlum-1bmogc-quinn.patel7996"
}

resource "aws_iam_user_login_profile" "quinn_patel7996" {
  user                    = aws_iam_user.quinn_patel7996.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_patel7996__kyc_2_analysts" {
  user   = aws_iam_user.quinn_patel7996.name
  groups = [aws_iam_group.kyc_2_analysts.name]
}

resource "aws_iam_user" "quinn_rossi" {
  name = "fenlum-1bmogc-quinn.rossi"
}

resource "aws_iam_user_login_profile" "quinn_rossi" {
  user                    = aws_iam_user.quinn_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_rossi__kyc_analysts" {
  user   = aws_iam_user.quinn_rossi.name
  groups = [aws_iam_group.kyc_analysts.name]
}

resource "aws_iam_user" "quinn_silva" {
  name = "fenlum-1bmogc-quinn.silva"
}

resource "aws_iam_user_login_profile" "quinn_silva" {
  user                    = aws_iam_user.quinn_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_silva__mobile_4_analysts" {
  user   = aws_iam_user.quinn_silva.name
  groups = [aws_iam_group.mobile_4_analysts.name]
}

resource "aws_iam_user" "quinn_smith" {
  name = "fenlum-1bmogc-quinn.smith"
}

resource "aws_iam_user_login_profile" "quinn_smith" {
  user                    = aws_iam_user.quinn_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_smith__mobile_devs" {
  user   = aws_iam_user.quinn_smith.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "quinn_tanaka" {
  name = "fenlum-1bmogc-quinn.tanaka"
}

resource "aws_iam_user_group_membership" "quinn_tanaka__data_eng_2_analysts" {
  user   = aws_iam_user.quinn_tanaka.name
  groups = [aws_iam_group.data_eng_2_analysts.name]
}

resource "aws_iam_user_group_membership" "quinn_tanaka__reporting_2_analysts" {
  user   = aws_iam_user.quinn_tanaka.name
  groups = [aws_iam_group.reporting_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "quinn_tanaka__base_readonly" {
  user       = aws_iam_user.quinn_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "quinn_tanaka7028" {
  name = "fenlum-1bmogc-quinn.tanaka7028"
}

resource "aws_iam_user_login_profile" "quinn_tanaka7028" {
  user                    = aws_iam_user.quinn_tanaka7028.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_tanaka7028__fraud_3_devs" {
  user   = aws_iam_user.quinn_tanaka7028.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user" "raj_ali" {
  name = "fenlum-1bmogc-raj.ali"
}

resource "aws_iam_user_login_profile" "raj_ali" {
  user                    = aws_iam_user.raj_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_ali__treasury_6_devs" {
  user   = aws_iam_user.raj_ali.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user" "raj_brown" {
  name = "fenlum-1bmogc-raj.brown"
}

resource "aws_iam_user_login_profile" "raj_brown" {
  user                    = aws_iam_user.raj_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_brown__mobile_3_analysts" {
  user   = aws_iam_user.raj_brown.name
  groups = [aws_iam_group.mobile_3_analysts.name]
}

resource "aws_iam_user" "raj_cohen" {
  name = "fenlum-1bmogc-raj.cohen"
}

resource "aws_iam_user_login_profile" "raj_cohen" {
  user                    = aws_iam_user.raj_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_cohen__risk_2_analysts" {
  user   = aws_iam_user.raj_cohen.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user" "raj_davis" {
  name = "fenlum-1bmogc-raj.davis"
}

resource "aws_iam_user_login_profile" "raj_davis" {
  user                    = aws_iam_user.raj_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_davis__trading_analysts" {
  user   = aws_iam_user.raj_davis.name
  groups = [aws_iam_group.trading_analysts.name]
}

resource "aws_iam_user" "raj_dubois" {
  name = "fenlum-1bmogc-raj.dubois"
}

resource "aws_iam_user_login_profile" "raj_dubois" {
  user                    = aws_iam_user.raj_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_dubois__risk_devs" {
  user   = aws_iam_user.raj_dubois.name
  groups = [aws_iam_group.risk_devs.name]
}

resource "aws_iam_user_group_membership" "raj_dubois__risk_3_analysts" {
  user   = aws_iam_user.raj_dubois.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user" "raj_gupta" {
  name = "fenlum-1bmogc-raj.gupta"
}

resource "aws_iam_user_login_profile" "raj_gupta" {
  user                    = aws_iam_user.raj_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_gupta__trading_3_analysts" {
  user   = aws_iam_user.raj_gupta.name
  groups = [aws_iam_group.trading_3_analysts.name]
}

resource "aws_iam_user_group_membership" "raj_gupta__reporting_3_analysts" {
  user   = aws_iam_user.raj_gupta.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "raj_gupta729" {
  name = "fenlum-1bmogc-raj.gupta729"
}

resource "aws_iam_user_group_membership" "raj_gupta729__fraud_3_analysts" {
  user   = aws_iam_user.raj_gupta729.name
  groups = [aws_iam_group.fraud_3_analysts.name]
}

resource "aws_iam_user_group_membership" "raj_gupta729__trading_7_analysts" {
  user   = aws_iam_user.raj_gupta729.name
  groups = [aws_iam_group.trading_7_analysts.name]
}

resource "aws_iam_user" "raj_ivanov" {
  name = "fenlum-1bmogc-raj.ivanov"
}

resource "aws_iam_user_login_profile" "raj_ivanov" {
  user                    = aws_iam_user.raj_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_ivanov__platform_3_devs" {
  user   = aws_iam_user.raj_ivanov.name
  groups = [aws_iam_group.platform_3_devs.name]
}

resource "aws_iam_user" "raj_jones" {
  name = "fenlum-1bmogc-raj.jones"
}

resource "aws_iam_user_login_profile" "raj_jones" {
  user                    = aws_iam_user.raj_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_jones__trading_2_devs" {
  user   = aws_iam_user.raj_jones.name
  groups = [aws_iam_group.trading_2_devs.name]
}

resource "aws_iam_user_group_membership" "raj_jones__lending_6_analysts" {
  user   = aws_iam_user.raj_jones.name
  groups = [aws_iam_group.lending_6_analysts.name]
}

resource "aws_iam_user" "raj_jones849" {
  name = "fenlum-1bmogc-raj.jones849"
}

resource "aws_iam_user_login_profile" "raj_jones849" {
  user                    = aws_iam_user.raj_jones849.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_jones849__trading_3_devs" {
  user   = aws_iam_user.raj_jones849.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user_group_membership" "raj_jones849__treasury_2_analysts" {
  user   = aws_iam_user.raj_jones849.name
  groups = [aws_iam_group.treasury_2_analysts.name]
}

resource "aws_iam_user" "raj_jones8923" {
  name = "fenlum-1bmogc-raj.jones8923"
}

resource "aws_iam_user_login_profile" "raj_jones8923" {
  user                    = aws_iam_user.raj_jones8923.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_jones8923__platform_4_devs" {
  user   = aws_iam_user.raj_jones8923.name
  groups = [aws_iam_group.platform_4_devs.name]
}

resource "aws_iam_user" "raj_jones9050" {
  name = "fenlum-1bmogc-raj.jones9050"
}

resource "aws_iam_user_login_profile" "raj_jones9050" {
  user                    = aws_iam_user.raj_jones9050.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_jones9050__fraud_3_devs" {
  user   = aws_iam_user.raj_jones9050.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user" "raj_khan" {
  name = "fenlum-1bmogc-raj.khan"
}

resource "aws_iam_user_login_profile" "raj_khan" {
  user                    = aws_iam_user.raj_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_khan__kyc_5_devs" {
  user   = aws_iam_user.raj_khan.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "raj_mehta" {
  name = "fenlum-1bmogc-raj.mehta"
}

resource "aws_iam_user_login_profile" "raj_mehta" {
  user                    = aws_iam_user.raj_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_mehta__ledger_7_analysts" {
  user   = aws_iam_user.raj_mehta.name
  groups = [aws_iam_group.ledger_7_analysts.name]
}

resource "aws_iam_user" "raj_nguyen" {
  name = "fenlum-1bmogc-raj.nguyen"
}

resource "aws_iam_user_login_profile" "raj_nguyen" {
  user                    = aws_iam_user.raj_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_nguyen__payments_devs" {
  user   = aws_iam_user.raj_nguyen.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user" "raj_nguyen3739" {
  name = "fenlum-1bmogc-raj.nguyen3739"
}

resource "aws_iam_user_login_profile" "raj_nguyen3739" {
  user                    = aws_iam_user.raj_nguyen3739.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_nguyen3739__payments_2_devs" {
  user   = aws_iam_user.raj_nguyen3739.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user" "raj_novak" {
  name = "fenlum-1bmogc-raj.novak"
}

resource "aws_iam_user_login_profile" "raj_novak" {
  user                    = aws_iam_user.raj_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_novak__treasury_devs" {
  user   = aws_iam_user.raj_novak.name
  groups = [aws_iam_group.treasury_devs.name]
}

resource "aws_iam_user_policy_attachment" "raj_novak__base_readonly" {
  user       = aws_iam_user.raj_novak.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "raj_patel" {
  name = "fenlum-1bmogc-raj.patel"
}

resource "aws_iam_user_login_profile" "raj_patel" {
  user                    = aws_iam_user.raj_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_patel__platform_6_devs" {
  user   = aws_iam_user.raj_patel.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "raj_rossi" {
  name = "fenlum-1bmogc-raj.rossi"
}

resource "aws_iam_user_login_profile" "raj_rossi" {
  user                    = aws_iam_user.raj_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_rossi__risk_6_analysts" {
  user   = aws_iam_user.raj_rossi.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user_group_membership" "raj_rossi__treasury_3_analysts" {
  user   = aws_iam_user.raj_rossi.name
  groups = [aws_iam_group.treasury_3_analysts.name]
}

resource "aws_iam_user" "raj_sato" {
  name = "fenlum-1bmogc-raj.sato"
}

resource "aws_iam_user_login_profile" "raj_sato" {
  user                    = aws_iam_user.raj_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_sato__reporting_2_devs" {
  user   = aws_iam_user.raj_sato.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "raj_silva" {
  name = "fenlum-1bmogc-raj.silva"
}

resource "aws_iam_user_login_profile" "raj_silva" {
  user                    = aws_iam_user.raj_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_silva__platform_4_devs" {
  user   = aws_iam_user.raj_silva.name
  groups = [aws_iam_group.platform_4_devs.name]
}

resource "aws_iam_user_group_membership" "raj_silva__payments_2_analysts" {
  user   = aws_iam_user.raj_silva.name
  groups = [aws_iam_group.payments_2_analysts.name]
}

resource "aws_iam_user" "raj_singh" {
  name = "fenlum-1bmogc-raj.singh"
}

resource "aws_iam_user_login_profile" "raj_singh" {
  user                    = aws_iam_user.raj_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_singh__mobile_6_devs" {
  user   = aws_iam_user.raj_singh.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user" "raj_tanaka" {
  name = "fenlum-1bmogc-raj.tanaka"
}

resource "aws_iam_user_login_profile" "raj_tanaka" {
  user                    = aws_iam_user.raj_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_tanaka__mobile_analysts" {
  user   = aws_iam_user.raj_tanaka.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "raj_tanaka1263" {
  name = "fenlum-1bmogc-raj.tanaka1263"
}

resource "aws_iam_user_login_profile" "raj_tanaka1263" {
  user                    = aws_iam_user.raj_tanaka1263.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_tanaka1263__lending_2_analysts" {
  user   = aws_iam_user.raj_tanaka1263.name
  groups = [aws_iam_group.lending_2_analysts.name]
}

resource "aws_iam_user" "sara_brown" {
  name = "fenlum-1bmogc-sara.brown"
}

resource "aws_iam_user_login_profile" "sara_brown" {
  user                    = aws_iam_user.sara_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_brown__fraud_6_devs" {
  user   = aws_iam_user.sara_brown.name
  groups = [aws_iam_group.fraud_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "sara_brown__base_readonly" {
  user       = aws_iam_user.sara_brown.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "sara_brown376" {
  name = "fenlum-1bmogc-sara.brown376"
}

resource "aws_iam_user_group_membership" "sara_brown376__lending_5_devs" {
  user   = aws_iam_user.sara_brown376.name
  groups = [aws_iam_group.lending_5_devs.name]
}

resource "aws_iam_user" "sara_chen" {
  name = "fenlum-1bmogc-sara.chen"
}

resource "aws_iam_user_login_profile" "sara_chen" {
  user                    = aws_iam_user.sara_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_chen__fraud_7_devs" {
  user   = aws_iam_user.sara_chen.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user" "sara_davis" {
  name = "fenlum-1bmogc-sara.davis"
}

resource "aws_iam_user_login_profile" "sara_davis" {
  user                    = aws_iam_user.sara_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_davis__lending_7_devs" {
  user   = aws_iam_user.sara_davis.name
  groups = [aws_iam_group.lending_7_devs.name]
}

resource "aws_iam_user" "sara_dubois" {
  name = "fenlum-1bmogc-sara.dubois"
}

resource "aws_iam_user_login_profile" "sara_dubois" {
  user                    = aws_iam_user.sara_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_dubois__reporting_6_devs" {
  user   = aws_iam_user.sara_dubois.name
  groups = [aws_iam_group.reporting_6_devs.name]
}

resource "aws_iam_user" "sara_garcia" {
  name = "fenlum-1bmogc-sara.garcia"
}

resource "aws_iam_user_login_profile" "sara_garcia" {
  user                    = aws_iam_user.sara_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_garcia__mobile_3_analysts" {
  user   = aws_iam_user.sara_garcia.name
  groups = [aws_iam_group.mobile_3_analysts.name]
}

resource "aws_iam_user" "sara_gupta" {
  name = "fenlum-1bmogc-sara.gupta"
}

resource "aws_iam_user_login_profile" "sara_gupta" {
  user                    = aws_iam_user.sara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_gupta__treasury_4_analysts" {
  user   = aws_iam_user.sara_gupta.name
  groups = [aws_iam_group.treasury_4_analysts.name]
}

resource "aws_iam_user" "sara_haddad" {
  name = "fenlum-1bmogc-sara.haddad"
}

resource "aws_iam_user_login_profile" "sara_haddad" {
  user                    = aws_iam_user.sara_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_haddad__data_eng_6_devs" {
  user   = aws_iam_user.sara_haddad.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user" "sara_jones" {
  name = "fenlum-1bmogc-sara.jones"
}

resource "aws_iam_user_group_membership" "sara_jones__treasury_analysts" {
  user   = aws_iam_user.sara_jones.name
  groups = [aws_iam_group.treasury_analysts.name]
}

resource "aws_iam_user" "sara_jones7936" {
  name = "fenlum-1bmogc-sara.jones7936"
}

resource "aws_iam_user_login_profile" "sara_jones7936" {
  user                    = aws_iam_user.sara_jones7936.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_jones7936__mobile_devs" {
  user   = aws_iam_user.sara_jones7936.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "sara_khan" {
  name = "fenlum-1bmogc-sara.khan"
}

resource "aws_iam_user_login_profile" "sara_khan" {
  user                    = aws_iam_user.sara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_khan__mobile_analysts" {
  user   = aws_iam_user.sara_khan.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user_group_membership" "sara_khan__kyc_4_analysts" {
  user   = aws_iam_user.sara_khan.name
  groups = [aws_iam_group.kyc_4_analysts.name]
}

resource "aws_iam_user" "sara_kim" {
  name = "fenlum-1bmogc-sara.kim"
}

resource "aws_iam_user_login_profile" "sara_kim" {
  user                    = aws_iam_user.sara_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_kim__payments_5_analysts" {
  user   = aws_iam_user.sara_kim.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user_group_membership" "sara_kim__kyc_3_analysts" {
  user   = aws_iam_user.sara_kim.name
  groups = [aws_iam_group.kyc_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "sara_kim__base_readonly" {
  user       = aws_iam_user.sara_kim.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "sara_lopez" {
  name = "fenlum-1bmogc-sara.lopez"
}

resource "aws_iam_user_login_profile" "sara_lopez" {
  user                    = aws_iam_user.sara_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_lopez__payments_5_analysts" {
  user   = aws_iam_user.sara_lopez.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user_group_membership" "sara_lopez__risk_6_analysts" {
  user   = aws_iam_user.sara_lopez.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user" "sara_mehta" {
  name = "fenlum-1bmogc-sara.mehta"
}

resource "aws_iam_user_login_profile" "sara_mehta" {
  user                    = aws_iam_user.sara_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_mehta__lending_4_devs" {
  user   = aws_iam_user.sara_mehta.name
  groups = [aws_iam_group.lending_4_devs.name]
}

resource "aws_iam_user" "sara_mehta9990" {
  name = "fenlum-1bmogc-sara.mehta9990"
}

resource "aws_iam_user_login_profile" "sara_mehta9990" {
  user                    = aws_iam_user.sara_mehta9990.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_mehta9990__fraud_7_devs" {
  user   = aws_iam_user.sara_mehta9990.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user_group_membership" "sara_mehta9990__platform_2_analysts" {
  user   = aws_iam_user.sara_mehta9990.name
  groups = [aws_iam_group.platform_2_analysts.name]
}

resource "aws_iam_user_policy_attachment" "sara_mehta9990__base_readonly" {
  user       = aws_iam_user.sara_mehta9990.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "sara_muller" {
  name = "fenlum-1bmogc-sara.muller"
}

resource "aws_iam_user_group_membership" "sara_muller__mobile_5_devs" {
  user   = aws_iam_user.sara_muller.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user" "sara_muller9964" {
  name = "fenlum-1bmogc-sara.muller9964"
}

resource "aws_iam_user_login_profile" "sara_muller9964" {
  user                    = aws_iam_user.sara_muller9964.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_muller9964__lending_2_devs" {
  user   = aws_iam_user.sara_muller9964.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user" "sara_okafor" {
  name = "fenlum-1bmogc-sara.okafor"
}

resource "aws_iam_user_login_profile" "sara_okafor" {
  user                    = aws_iam_user.sara_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_okafor__treasury_6_analysts" {
  user   = aws_iam_user.sara_okafor.name
  groups = [aws_iam_group.treasury_6_analysts.name]
}

resource "aws_iam_user" "sara_patel" {
  name = "fenlum-1bmogc-sara.patel"
}

resource "aws_iam_user_login_profile" "sara_patel" {
  user                    = aws_iam_user.sara_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_patel__trading_6_devs" {
  user   = aws_iam_user.sara_patel.name
  groups = [aws_iam_group.trading_6_devs.name]
}

resource "aws_iam_user" "sara_reddy" {
  name = "fenlum-1bmogc-sara.reddy"
}

resource "aws_iam_user_login_profile" "sara_reddy" {
  user                    = aws_iam_user.sara_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_reddy__reporting_3_devs" {
  user   = aws_iam_user.sara_reddy.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "sara_reddy__base_readonly" {
  user       = aws_iam_user.sara_reddy.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "sara_sato" {
  name = "fenlum-1bmogc-sara.sato"
}

resource "aws_iam_user_group_membership" "sara_sato__mobile_2_analysts" {
  user   = aws_iam_user.sara_sato.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "sara_sato2547" {
  name = "fenlum-1bmogc-sara.sato2547"
}

resource "aws_iam_user_login_profile" "sara_sato2547" {
  user                    = aws_iam_user.sara_sato2547.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_sato2547__data_eng_devs" {
  user   = aws_iam_user.sara_sato2547.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user" "sara_singh" {
  name = "fenlum-1bmogc-sara.singh"
}

resource "aws_iam_user_login_profile" "sara_singh" {
  user                    = aws_iam_user.sara_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_singh__platform_3_devs" {
  user   = aws_iam_user.sara_singh.name
  groups = [aws_iam_group.platform_3_devs.name]
}

resource "aws_iam_user" "sara_tanaka" {
  name = "fenlum-1bmogc-sara.tanaka"
}

resource "aws_iam_user_login_profile" "sara_tanaka" {
  user                    = aws_iam_user.sara_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_tanaka__reporting_3_devs" {
  user   = aws_iam_user.sara_tanaka.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user" "sara_tanaka2223" {
  name = "fenlum-1bmogc-sara.tanaka2223"
}

resource "aws_iam_user_login_profile" "sara_tanaka2223" {
  user                    = aws_iam_user.sara_tanaka2223.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_tanaka2223__data_eng_6_analysts" {
  user   = aws_iam_user.sara_tanaka2223.name
  groups = [aws_iam_group.data_eng_6_analysts.name]
}

resource "aws_iam_user" "sara_tanaka4618" {
  name = "fenlum-1bmogc-sara.tanaka4618"
}

resource "aws_iam_user_login_profile" "sara_tanaka4618" {
  user                    = aws_iam_user.sara_tanaka4618.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "sara_tanaka4618__treasury_3_devs" {
  user   = aws_iam_user.sara_tanaka4618.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user" "tom_brown" {
  name = "fenlum-1bmogc-tom.brown"
}

resource "aws_iam_user_group_membership" "tom_brown__platform_devs" {
  user   = aws_iam_user.tom_brown.name
  groups = [aws_iam_group.platform_devs.name]
}

resource "aws_iam_user" "tom_cohen" {
  name = "fenlum-1bmogc-tom.cohen"
}

resource "aws_iam_user_group_membership" "tom_cohen__platform_6_devs" {
  user   = aws_iam_user.tom_cohen.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "tom_cohen3246" {
  name = "fenlum-1bmogc-tom.cohen3246"
}

resource "aws_iam_user_login_profile" "tom_cohen3246" {
  user                    = aws_iam_user.tom_cohen3246.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_cohen3246__mobile_3_devs" {
  user   = aws_iam_user.tom_cohen3246.name
  groups = [aws_iam_group.mobile_3_devs.name]
}

resource "aws_iam_user" "tom_garcia" {
  name = "fenlum-1bmogc-tom.garcia"
}

resource "aws_iam_user_login_profile" "tom_garcia" {
  user                    = aws_iam_user.tom_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_garcia__ledger_3_devs" {
  user   = aws_iam_user.tom_garcia.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user" "tom_garcia2967" {
  name = "fenlum-1bmogc-tom.garcia2967"
}

resource "aws_iam_user_group_membership" "tom_garcia2967__treasury_4_analysts" {
  user   = aws_iam_user.tom_garcia2967.name
  groups = [aws_iam_group.treasury_4_analysts.name]
}

resource "aws_iam_user" "tom_haddad" {
  name = "fenlum-1bmogc-tom.haddad"
}

resource "aws_iam_user_group_membership" "tom_haddad__kyc_2_devs" {
  user   = aws_iam_user.tom_haddad.name
  groups = [aws_iam_group.kyc_2_devs.name]
}

resource "aws_iam_user" "tom_ivanov" {
  name = "fenlum-1bmogc-tom.ivanov"
}

resource "aws_iam_user_login_profile" "tom_ivanov" {
  user                    = aws_iam_user.tom_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_ivanov__kyc_5_analysts" {
  user   = aws_iam_user.tom_ivanov.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "tom_ivanov__base_readonly" {
  user       = aws_iam_user.tom_ivanov.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "tom_ivanov3800" {
  name = "fenlum-1bmogc-tom.ivanov3800"
}

resource "aws_iam_user_login_profile" "tom_ivanov3800" {
  user                    = aws_iam_user.tom_ivanov3800.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_ivanov3800__mobile_devs" {
  user   = aws_iam_user.tom_ivanov3800.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user_policy_attachment" "tom_ivanov3800__base_readonly" {
  user       = aws_iam_user.tom_ivanov3800.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "tom_jones" {
  name = "fenlum-1bmogc-tom.jones"
}

resource "aws_iam_user_login_profile" "tom_jones" {
  user                    = aws_iam_user.tom_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_jones__treasury_6_devs" {
  user   = aws_iam_user.tom_jones.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user_group_membership" "tom_jones__reporting_5_analysts" {
  user   = aws_iam_user.tom_jones.name
  groups = [aws_iam_group.reporting_5_analysts.name]
}

resource "aws_iam_user" "tom_khan" {
  name = "fenlum-1bmogc-tom.khan"
}

resource "aws_iam_user_login_profile" "tom_khan" {
  user                    = aws_iam_user.tom_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_khan__data_eng_devs" {
  user   = aws_iam_user.tom_khan.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user" "tom_kim" {
  name = "fenlum-1bmogc-tom.kim"
}

resource "aws_iam_user_login_profile" "tom_kim" {
  user                    = aws_iam_user.tom_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_kim__ledger_6_devs" {
  user   = aws_iam_user.tom_kim.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user_group_membership" "tom_kim__risk_6_analysts" {
  user   = aws_iam_user.tom_kim.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user" "tom_kim8219" {
  name = "fenlum-1bmogc-tom.kim8219"
}

resource "aws_iam_user_group_membership" "tom_kim8219__trading_7_devs" {
  user   = aws_iam_user.tom_kim8219.name
  groups = [aws_iam_group.trading_7_devs.name]
}

resource "aws_iam_user" "tom_lopez" {
  name = "fenlum-1bmogc-tom.lopez"
}

resource "aws_iam_user_login_profile" "tom_lopez" {
  user                    = aws_iam_user.tom_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_lopez__kyc_6_devs" {
  user   = aws_iam_user.tom_lopez.name
  groups = [aws_iam_group.kyc_6_devs.name]
}

resource "aws_iam_user" "tom_mehta" {
  name = "fenlum-1bmogc-tom.mehta"
}

resource "aws_iam_user_login_profile" "tom_mehta" {
  user                    = aws_iam_user.tom_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_mehta__trading_4_devs" {
  user   = aws_iam_user.tom_mehta.name
  groups = [aws_iam_group.trading_4_devs.name]
}

resource "aws_iam_user_group_membership" "tom_mehta__ledger_analysts" {
  user   = aws_iam_user.tom_mehta.name
  groups = [aws_iam_group.ledger_analysts.name]
}

resource "aws_iam_user" "tom_muller" {
  name = "fenlum-1bmogc-tom.muller"
}

resource "aws_iam_user_login_profile" "tom_muller" {
  user                    = aws_iam_user.tom_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_muller__reporting_6_devs" {
  user   = aws_iam_user.tom_muller.name
  groups = [aws_iam_group.reporting_6_devs.name]
}

resource "aws_iam_user" "tom_muller8428" {
  name = "fenlum-1bmogc-tom.muller8428"
}

resource "aws_iam_user_login_profile" "tom_muller8428" {
  user                    = aws_iam_user.tom_muller8428.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_muller8428__ledger_7_devs" {
  user   = aws_iam_user.tom_muller8428.name
  groups = [aws_iam_group.ledger_7_devs.name]
}

resource "aws_iam_user" "tom_novak" {
  name = "fenlum-1bmogc-tom.novak"
}

resource "aws_iam_user_login_profile" "tom_novak" {
  user                    = aws_iam_user.tom_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_novak__reporting_devs" {
  user   = aws_iam_user.tom_novak.name
  groups = [aws_iam_group.reporting_devs.name]
}

resource "aws_iam_user" "tom_patel" {
  name = "fenlum-1bmogc-tom.patel"
}

resource "aws_iam_user_login_profile" "tom_patel" {
  user                    = aws_iam_user.tom_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_patel__ledger_3_devs" {
  user   = aws_iam_user.tom_patel.name
  groups = [aws_iam_group.ledger_3_devs.name]
}

resource "aws_iam_user" "tom_sato" {
  name = "fenlum-1bmogc-tom.sato"
}

resource "aws_iam_user_login_profile" "tom_sato" {
  user                    = aws_iam_user.tom_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_sato__reporting_devs" {
  user   = aws_iam_user.tom_sato.name
  groups = [aws_iam_group.reporting_devs.name]
}

resource "aws_iam_user" "tom_singh" {
  name = "fenlum-1bmogc-tom.singh"
}

resource "aws_iam_user_group_membership" "tom_singh__kyc_analysts" {
  user   = aws_iam_user.tom_singh.name
  groups = [aws_iam_group.kyc_analysts.name]
}

resource "aws_iam_user" "tom_singh8529" {
  name = "fenlum-1bmogc-tom.singh8529"
}

resource "aws_iam_user_login_profile" "tom_singh8529" {
  user                    = aws_iam_user.tom_singh8529.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_singh8529__kyc_7_analysts" {
  user   = aws_iam_user.tom_singh8529.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user" "tom_smith" {
  name = "fenlum-1bmogc-tom.smith"
}

resource "aws_iam_user_login_profile" "tom_smith" {
  user                    = aws_iam_user.tom_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_smith__lending_devs" {
  user   = aws_iam_user.tom_smith.name
  groups = [aws_iam_group.lending_devs.name]
}

resource "aws_iam_user" "tom_tanaka" {
  name = "fenlum-1bmogc-tom.tanaka"
}

resource "aws_iam_user_login_profile" "tom_tanaka" {
  user                    = aws_iam_user.tom_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_tanaka__platform_3_analysts" {
  user   = aws_iam_user.tom_tanaka.name
  groups = [aws_iam_group.platform_3_analysts.name]
}

resource "aws_iam_user_policy_attachment" "tom_tanaka__base_readonly" {
  user       = aws_iam_user.tom_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_ali" {
  name = "fenlum-1bmogc-uma.ali"
}

resource "aws_iam_user_login_profile" "uma_ali" {
  user                    = aws_iam_user.uma_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_ali__lending_5_analysts" {
  user   = aws_iam_user.uma_ali.name
  groups = [aws_iam_group.lending_5_analysts.name]
}

resource "aws_iam_user" "uma_ali5918" {
  name = "fenlum-1bmogc-uma.ali5918"
}

resource "aws_iam_user_login_profile" "uma_ali5918" {
  user                    = aws_iam_user.uma_ali5918.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_ali5918__trading_2_devs" {
  user   = aws_iam_user.uma_ali5918.name
  groups = [aws_iam_group.trading_2_devs.name]
}

resource "aws_iam_user_group_membership" "uma_ali5918__lending_6_analysts" {
  user   = aws_iam_user.uma_ali5918.name
  groups = [aws_iam_group.lending_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "uma_ali5918__base_readonly" {
  user       = aws_iam_user.uma_ali5918.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_ali8311" {
  name = "fenlum-1bmogc-uma.ali8311"
}

resource "aws_iam_user_login_profile" "uma_ali8311" {
  user                    = aws_iam_user.uma_ali8311.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_ali8311__ledger_7_devs" {
  user   = aws_iam_user.uma_ali8311.name
  groups = [aws_iam_group.ledger_7_devs.name]
}

resource "aws_iam_user" "uma_brown" {
  name = "fenlum-1bmogc-uma.brown"
}

resource "aws_iam_user_login_profile" "uma_brown" {
  user                    = aws_iam_user.uma_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_brown__fraud_5_devs" {
  user   = aws_iam_user.uma_brown.name
  groups = [aws_iam_group.fraud_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "uma_brown__base_readonly" {
  user       = aws_iam_user.uma_brown.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_cohen" {
  name = "fenlum-1bmogc-uma.cohen"
}

resource "aws_iam_user_group_membership" "uma_cohen__treasury_4_analysts" {
  user   = aws_iam_user.uma_cohen.name
  groups = [aws_iam_group.treasury_4_analysts.name]
}

resource "aws_iam_user" "uma_davis" {
  name = "fenlum-1bmogc-uma.davis"
}

resource "aws_iam_user_login_profile" "uma_davis" {
  user                    = aws_iam_user.uma_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_davis__treasury_4_devs" {
  user   = aws_iam_user.uma_davis.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user" "uma_davis7695" {
  name = "fenlum-1bmogc-uma.davis7695"
}

resource "aws_iam_user_group_membership" "uma_davis7695__lending_5_devs" {
  user   = aws_iam_user.uma_davis7695.name
  groups = [aws_iam_group.lending_5_devs.name]
}

resource "aws_iam_user" "uma_dubois" {
  name = "fenlum-1bmogc-uma.dubois"
}

resource "aws_iam_user_login_profile" "uma_dubois" {
  user                    = aws_iam_user.uma_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_dubois__kyc_5_analysts" {
  user   = aws_iam_user.uma_dubois.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user_group_membership" "uma_dubois__payments_4_analysts" {
  user   = aws_iam_user.uma_dubois.name
  groups = [aws_iam_group.payments_4_analysts.name]
}

resource "aws_iam_user" "uma_dubois6732" {
  name = "fenlum-1bmogc-uma.dubois6732"
}

resource "aws_iam_user_login_profile" "uma_dubois6732" {
  user                    = aws_iam_user.uma_dubois6732.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_dubois6732__risk_5_analysts" {
  user   = aws_iam_user.uma_dubois6732.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "uma_dubois6732__base_readonly" {
  user       = aws_iam_user.uma_dubois6732.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_garcia" {
  name = "fenlum-1bmogc-uma.garcia"
}

resource "aws_iam_user_login_profile" "uma_garcia" {
  user                    = aws_iam_user.uma_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_garcia__ledger_5_devs" {
  user   = aws_iam_user.uma_garcia.name
  groups = [aws_iam_group.ledger_5_devs.name]
}

resource "aws_iam_user" "uma_gupta" {
  name = "fenlum-1bmogc-uma.gupta"
}

resource "aws_iam_user_login_profile" "uma_gupta" {
  user                    = aws_iam_user.uma_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_gupta__data_eng_2_devs" {
  user   = aws_iam_user.uma_gupta.name
  groups = [aws_iam_group.data_eng_2_devs.name]
}

resource "aws_iam_user" "uma_gupta2609" {
  name = "fenlum-1bmogc-uma.gupta2609"
}

resource "aws_iam_user_group_membership" "uma_gupta2609__risk_6_devs" {
  user   = aws_iam_user.uma_gupta2609.name
  groups = [aws_iam_group.risk_6_devs.name]
}

resource "aws_iam_user" "uma_haddad" {
  name = "fenlum-1bmogc-uma.haddad"
}

resource "aws_iam_user_login_profile" "uma_haddad" {
  user                    = aws_iam_user.uma_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_haddad__platform_6_analysts" {
  user   = aws_iam_user.uma_haddad.name
  groups = [aws_iam_group.platform_6_analysts.name]
}

resource "aws_iam_user_policy_attachment" "uma_haddad__base_readonly" {
  user       = aws_iam_user.uma_haddad.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_haddad3102" {
  name = "fenlum-1bmogc-uma.haddad3102"
}

resource "aws_iam_user_login_profile" "uma_haddad3102" {
  user                    = aws_iam_user.uma_haddad3102.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_haddad3102__risk_2_devs" {
  user   = aws_iam_user.uma_haddad3102.name
  groups = [aws_iam_group.risk_2_devs.name]
}

resource "aws_iam_user_group_membership" "uma_haddad3102__reporting_4_analysts" {
  user   = aws_iam_user.uma_haddad3102.name
  groups = [aws_iam_group.reporting_4_analysts.name]
}

resource "aws_iam_user" "uma_haddad935" {
  name = "fenlum-1bmogc-uma.haddad935"
}

resource "aws_iam_user_group_membership" "uma_haddad935__kyc_2_devs" {
  user   = aws_iam_user.uma_haddad935.name
  groups = [aws_iam_group.kyc_2_devs.name]
}

resource "aws_iam_user" "uma_jones" {
  name = "fenlum-1bmogc-uma.jones"
}

resource "aws_iam_user_login_profile" "uma_jones" {
  user                    = aws_iam_user.uma_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_jones__treasury_3_devs" {
  user   = aws_iam_user.uma_jones.name
  groups = [aws_iam_group.treasury_3_devs.name]
}

resource "aws_iam_user" "uma_khan" {
  name = "fenlum-1bmogc-uma.khan"
}

resource "aws_iam_user_login_profile" "uma_khan" {
  user                    = aws_iam_user.uma_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_khan__payments_3_devs" {
  user   = aws_iam_user.uma_khan.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "uma_khan5269" {
  name = "fenlum-1bmogc-uma.khan5269"
}

resource "aws_iam_user_login_profile" "uma_khan5269" {
  user                    = aws_iam_user.uma_khan5269.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_khan5269__risk_3_devs" {
  user   = aws_iam_user.uma_khan5269.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user" "uma_kim" {
  name = "fenlum-1bmogc-uma.kim"
}

resource "aws_iam_user_login_profile" "uma_kim" {
  user                    = aws_iam_user.uma_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_kim__lending_2_devs" {
  user   = aws_iam_user.uma_kim.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user" "uma_lopez" {
  name = "fenlum-1bmogc-uma.lopez"
}

resource "aws_iam_user_login_profile" "uma_lopez" {
  user                    = aws_iam_user.uma_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_lopez__ledger_devs" {
  user   = aws_iam_user.uma_lopez.name
  groups = [aws_iam_group.ledger_devs.name]
}

resource "aws_iam_user_policy_attachment" "uma_lopez__base_readonly" {
  user       = aws_iam_user.uma_lopez.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_muller" {
  name = "fenlum-1bmogc-uma.muller"
}

resource "aws_iam_user_group_membership" "uma_muller__platform_5_devs" {
  user   = aws_iam_user.uma_muller.name
  groups = [aws_iam_group.platform_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "uma_muller__base_readonly" {
  user       = aws_iam_user.uma_muller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "uma_muller2704" {
  name = "fenlum-1bmogc-uma.muller2704"
}

resource "aws_iam_user_login_profile" "uma_muller2704" {
  user                    = aws_iam_user.uma_muller2704.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_muller2704__kyc_5_devs" {
  user   = aws_iam_user.uma_muller2704.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "uma_novak" {
  name = "fenlum-1bmogc-uma.novak"
}

resource "aws_iam_user_login_profile" "uma_novak" {
  user                    = aws_iam_user.uma_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_novak__mobile_devs" {
  user   = aws_iam_user.uma_novak.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "uma_okafor" {
  name = "fenlum-1bmogc-uma.okafor"
}

resource "aws_iam_user_login_profile" "uma_okafor" {
  user                    = aws_iam_user.uma_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_okafor__kyc_devs" {
  user   = aws_iam_user.uma_okafor.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user_group_membership" "uma_okafor__risk_3_analysts" {
  user   = aws_iam_user.uma_okafor.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user" "uma_okafor9307" {
  name = "fenlum-1bmogc-uma.okafor9307"
}

resource "aws_iam_user_login_profile" "uma_okafor9307" {
  user                    = aws_iam_user.uma_okafor9307.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_okafor9307__data_eng_6_analysts" {
  user   = aws_iam_user.uma_okafor9307.name
  groups = [aws_iam_group.data_eng_6_analysts.name]
}

resource "aws_iam_user" "uma_rossi" {
  name = "fenlum-1bmogc-uma.rossi"
}

resource "aws_iam_user_login_profile" "uma_rossi" {
  user                    = aws_iam_user.uma_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_rossi__mobile_4_devs" {
  user   = aws_iam_user.uma_rossi.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user_group_membership" "uma_rossi__platform_3_analysts" {
  user   = aws_iam_user.uma_rossi.name
  groups = [aws_iam_group.platform_3_analysts.name]
}

resource "aws_iam_user" "uma_rossi3632" {
  name = "fenlum-1bmogc-uma.rossi3632"
}

resource "aws_iam_user_login_profile" "uma_rossi3632" {
  user                    = aws_iam_user.uma_rossi3632.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_rossi3632__trading_5_devs" {
  user   = aws_iam_user.uma_rossi3632.name
  groups = [aws_iam_group.trading_5_devs.name]
}

resource "aws_iam_user_group_membership" "uma_rossi3632__fraud_2_analysts" {
  user   = aws_iam_user.uma_rossi3632.name
  groups = [aws_iam_group.fraud_2_analysts.name]
}

resource "aws_iam_user" "uma_sato" {
  name = "fenlum-1bmogc-uma.sato"
}

resource "aws_iam_user_group_membership" "uma_sato__kyc_5_devs" {
  user   = aws_iam_user.uma_sato.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "uma_tanaka" {
  name = "fenlum-1bmogc-uma.tanaka"
}

resource "aws_iam_user_group_membership" "uma_tanaka__reporting_2_devs" {
  user   = aws_iam_user.uma_tanaka.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "vik_ali" {
  name = "fenlum-1bmogc-vik.ali"
}

resource "aws_iam_user_login_profile" "vik_ali" {
  user                    = aws_iam_user.vik_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_ali__mobile_2_analysts" {
  user   = aws_iam_user.vik_ali.name
  groups = [aws_iam_group.mobile_2_analysts.name]
}

resource "aws_iam_user" "vik_chen" {
  name = "fenlum-1bmogc-vik.chen"
}

resource "aws_iam_user_login_profile" "vik_chen" {
  user                    = aws_iam_user.vik_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_chen__risk_7_analysts" {
  user   = aws_iam_user.vik_chen.name
  groups = [aws_iam_group.risk_7_analysts.name]
}

resource "aws_iam_user_group_membership" "vik_chen__reporting_6_analysts" {
  user   = aws_iam_user.vik_chen.name
  groups = [aws_iam_group.reporting_6_analysts.name]
}

resource "aws_iam_user" "vik_cohen" {
  name = "fenlum-1bmogc-vik.cohen"
}

resource "aws_iam_user_login_profile" "vik_cohen" {
  user                    = aws_iam_user.vik_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_cohen__fraud_4_devs" {
  user   = aws_iam_user.vik_cohen.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user" "vik_davis" {
  name = "fenlum-1bmogc-vik.davis"
}

resource "aws_iam_user_login_profile" "vik_davis" {
  user                    = aws_iam_user.vik_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_davis__platform_6_devs" {
  user   = aws_iam_user.vik_davis.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "vik_davis3139" {
  name = "fenlum-1bmogc-vik.davis3139"
}

resource "aws_iam_user_login_profile" "vik_davis3139" {
  user                    = aws_iam_user.vik_davis3139.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_davis3139__risk_3_analysts" {
  user   = aws_iam_user.vik_davis3139.name
  groups = [aws_iam_group.risk_3_analysts.name]
}

resource "aws_iam_user" "vik_davis7315" {
  name = "fenlum-1bmogc-vik.davis7315"
}

resource "aws_iam_user_group_membership" "vik_davis7315__trading_7_analysts" {
  user   = aws_iam_user.vik_davis7315.name
  groups = [aws_iam_group.trading_7_analysts.name]
}

resource "aws_iam_user" "vik_dubois" {
  name = "fenlum-1bmogc-vik.dubois"
}

resource "aws_iam_user_login_profile" "vik_dubois" {
  user                    = aws_iam_user.vik_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_dubois__risk_3_devs" {
  user   = aws_iam_user.vik_dubois.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user_group_membership" "vik_dubois__lending_7_analysts" {
  user   = aws_iam_user.vik_dubois.name
  groups = [aws_iam_group.lending_7_analysts.name]
}

resource "aws_iam_user" "vik_haddad" {
  name = "fenlum-1bmogc-vik.haddad"
}

resource "aws_iam_user_login_profile" "vik_haddad" {
  user                    = aws_iam_user.vik_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_haddad__ledger_5_devs" {
  user   = aws_iam_user.vik_haddad.name
  groups = [aws_iam_group.ledger_5_devs.name]
}

resource "aws_iam_user" "vik_ivanov" {
  name = "fenlum-1bmogc-vik.ivanov"
}

resource "aws_iam_user_login_profile" "vik_ivanov" {
  user                    = aws_iam_user.vik_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_ivanov__mobile_devs" {
  user   = aws_iam_user.vik_ivanov.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "vik_ivanov5014" {
  name = "fenlum-1bmogc-vik.ivanov5014"
}

resource "aws_iam_user_login_profile" "vik_ivanov5014" {
  user                    = aws_iam_user.vik_ivanov5014.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_ivanov5014__risk_3_devs" {
  user   = aws_iam_user.vik_ivanov5014.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user_group_membership" "vik_ivanov5014__data_eng_analysts" {
  user   = aws_iam_user.vik_ivanov5014.name
  groups = [aws_iam_group.data_eng_analysts.name]
}

resource "aws_iam_user" "vik_jones" {
  name = "fenlum-1bmogc-vik.jones"
}

resource "aws_iam_user_login_profile" "vik_jones" {
  user                    = aws_iam_user.vik_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_jones__reporting_2_devs" {
  user   = aws_iam_user.vik_jones.name
  groups = [aws_iam_group.reporting_2_devs.name]
}

resource "aws_iam_user" "vik_khan" {
  name = "fenlum-1bmogc-vik.khan"
}

resource "aws_iam_user_group_membership" "vik_khan__lending_analysts" {
  user   = aws_iam_user.vik_khan.name
  groups = [aws_iam_group.lending_analysts.name]
}

resource "aws_iam_user" "vik_kim" {
  name = "fenlum-1bmogc-vik.kim"
}

resource "aws_iam_user_login_profile" "vik_kim" {
  user                    = aws_iam_user.vik_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_kim__lending_4_devs" {
  user   = aws_iam_user.vik_kim.name
  groups = [aws_iam_group.lending_4_devs.name]
}

resource "aws_iam_user" "vik_lopez" {
  name = "fenlum-1bmogc-vik.lopez"
}

resource "aws_iam_user_login_profile" "vik_lopez" {
  user                    = aws_iam_user.vik_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_lopez__treasury_7_analysts" {
  user   = aws_iam_user.vik_lopez.name
  groups = [aws_iam_group.treasury_7_analysts.name]
}

resource "aws_iam_user" "vik_lopez5894" {
  name = "fenlum-1bmogc-vik.lopez5894"
}

resource "aws_iam_user_login_profile" "vik_lopez5894" {
  user                    = aws_iam_user.vik_lopez5894.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_lopez5894__ledger_2_devs" {
  user   = aws_iam_user.vik_lopez5894.name
  groups = [aws_iam_group.ledger_2_devs.name]
}

resource "aws_iam_user" "vik_miller" {
  name = "fenlum-1bmogc-vik.miller"
}

resource "aws_iam_user_login_profile" "vik_miller" {
  user                    = aws_iam_user.vik_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_miller__platform_5_devs" {
  user   = aws_iam_user.vik_miller.name
  groups = [aws_iam_group.platform_5_devs.name]
}

resource "aws_iam_user" "vik_muller" {
  name = "fenlum-1bmogc-vik.muller"
}

resource "aws_iam_user_login_profile" "vik_muller" {
  user                    = aws_iam_user.vik_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_muller__reporting_5_devs" {
  user   = aws_iam_user.vik_muller.name
  groups = [aws_iam_group.reporting_5_devs.name]
}

resource "aws_iam_user" "vik_muller4596" {
  name = "fenlum-1bmogc-vik.muller4596"
}

resource "aws_iam_user_group_membership" "vik_muller4596__platform_6_analysts" {
  user   = aws_iam_user.vik_muller4596.name
  groups = [aws_iam_group.platform_6_analysts.name]
}

resource "aws_iam_user" "vik_nguyen" {
  name = "fenlum-1bmogc-vik.nguyen"
}

resource "aws_iam_user_login_profile" "vik_nguyen" {
  user                    = aws_iam_user.vik_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_nguyen__data_eng_2_devs" {
  user   = aws_iam_user.vik_nguyen.name
  groups = [aws_iam_group.data_eng_2_devs.name]
}

resource "aws_iam_user_group_membership" "vik_nguyen__ledger_analysts" {
  user   = aws_iam_user.vik_nguyen.name
  groups = [aws_iam_group.ledger_analysts.name]
}

resource "aws_iam_user" "vik_nguyen2454" {
  name = "fenlum-1bmogc-vik.nguyen2454"
}

resource "aws_iam_user_login_profile" "vik_nguyen2454" {
  user                    = aws_iam_user.vik_nguyen2454.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_nguyen2454__fraud_7_analysts" {
  user   = aws_iam_user.vik_nguyen2454.name
  groups = [aws_iam_group.fraud_7_analysts.name]
}

resource "aws_iam_user" "vik_okafor" {
  name = "fenlum-1bmogc-vik.okafor"
}

resource "aws_iam_user_login_profile" "vik_okafor" {
  user                    = aws_iam_user.vik_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_okafor__risk_4_devs" {
  user   = aws_iam_user.vik_okafor.name
  groups = [aws_iam_group.risk_4_devs.name]
}

resource "aws_iam_user" "vik_patel" {
  name = "fenlum-1bmogc-vik.patel"
}

resource "aws_iam_user_group_membership" "vik_patel__mobile_4_devs" {
  user   = aws_iam_user.vik_patel.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user_group_membership" "vik_patel__platform_2_analysts" {
  user   = aws_iam_user.vik_patel.name
  groups = [aws_iam_group.platform_2_analysts.name]
}

resource "aws_iam_user" "vik_reddy" {
  name = "fenlum-1bmogc-vik.reddy"
}

resource "aws_iam_user_login_profile" "vik_reddy" {
  user                    = aws_iam_user.vik_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_reddy__platform_6_devs" {
  user   = aws_iam_user.vik_reddy.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user_group_membership" "vik_reddy__reporting_3_analysts" {
  user   = aws_iam_user.vik_reddy.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "vik_reddy6602" {
  name = "fenlum-1bmogc-vik.reddy6602"
}

resource "aws_iam_user_login_profile" "vik_reddy6602" {
  user                    = aws_iam_user.vik_reddy6602.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_reddy6602__ledger_7_analysts" {
  user   = aws_iam_user.vik_reddy6602.name
  groups = [aws_iam_group.ledger_7_analysts.name]
}

resource "aws_iam_user" "vik_singh" {
  name = "fenlum-1bmogc-vik.singh"
}

resource "aws_iam_user_login_profile" "vik_singh" {
  user                    = aws_iam_user.vik_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_singh__fraud_3_devs" {
  user   = aws_iam_user.vik_singh.name
  groups = [aws_iam_group.fraud_3_devs.name]
}

resource "aws_iam_user" "vik_tanaka" {
  name = "fenlum-1bmogc-vik.tanaka"
}

resource "aws_iam_user_login_profile" "vik_tanaka" {
  user                    = aws_iam_user.vik_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_tanaka__platform_6_devs" {
  user   = aws_iam_user.vik_tanaka.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "vik_tanaka4207" {
  name = "fenlum-1bmogc-vik.tanaka4207"
}

resource "aws_iam_user_login_profile" "vik_tanaka4207" {
  user                    = aws_iam_user.vik_tanaka4207.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_tanaka4207__payments_3_devs" {
  user   = aws_iam_user.vik_tanaka4207.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "vik_tanaka4306" {
  name = "fenlum-1bmogc-vik.tanaka4306"
}

resource "aws_iam_user_group_membership" "vik_tanaka4306__risk_7_devs" {
  user   = aws_iam_user.vik_tanaka4306.name
  groups = [aws_iam_group.risk_7_devs.name]
}

resource "aws_iam_user" "vik_wong" {
  name = "fenlum-1bmogc-vik.wong"
}

resource "aws_iam_user_login_profile" "vik_wong" {
  user                    = aws_iam_user.vik_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_wong__payments_3_devs" {
  user   = aws_iam_user.vik_wong.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "wen_brown" {
  name = "fenlum-1bmogc-wen.brown"
}

resource "aws_iam_user_login_profile" "wen_brown" {
  user                    = aws_iam_user.wen_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_brown__fraud_6_devs" {
  user   = aws_iam_user.wen_brown.name
  groups = [aws_iam_group.fraud_6_devs.name]
}

resource "aws_iam_user_group_membership" "wen_brown__trading_2_analysts" {
  user   = aws_iam_user.wen_brown.name
  groups = [aws_iam_group.trading_2_analysts.name]
}

resource "aws_iam_user" "wen_cohen" {
  name = "fenlum-1bmogc-wen.cohen"
}

resource "aws_iam_user_login_profile" "wen_cohen" {
  user                    = aws_iam_user.wen_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_cohen__platform_6_devs" {
  user   = aws_iam_user.wen_cohen.name
  groups = [aws_iam_group.platform_6_devs.name]
}

resource "aws_iam_user" "wen_cohen6290" {
  name = "fenlum-1bmogc-wen.cohen6290"
}

resource "aws_iam_user_login_profile" "wen_cohen6290" {
  user                    = aws_iam_user.wen_cohen6290.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_cohen6290__payments_2_devs" {
  user   = aws_iam_user.wen_cohen6290.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user_group_membership" "wen_cohen6290__ledger_2_analysts" {
  user   = aws_iam_user.wen_cohen6290.name
  groups = [aws_iam_group.ledger_2_analysts.name]
}

resource "aws_iam_user" "wen_davis" {
  name = "fenlum-1bmogc-wen.davis"
}

resource "aws_iam_user_login_profile" "wen_davis" {
  user                    = aws_iam_user.wen_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_davis__platform_5_analysts" {
  user   = aws_iam_user.wen_davis.name
  groups = [aws_iam_group.platform_5_analysts.name]
}

resource "aws_iam_user" "wen_davis5339" {
  name = "fenlum-1bmogc-wen.davis5339"
}

resource "aws_iam_user_login_profile" "wen_davis5339" {
  user                    = aws_iam_user.wen_davis5339.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_davis5339__payments_devs" {
  user   = aws_iam_user.wen_davis5339.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user_group_membership" "wen_davis5339__mobile_analysts" {
  user   = aws_iam_user.wen_davis5339.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "wen_dubois" {
  name = "fenlum-1bmogc-wen.dubois"
}

resource "aws_iam_user_login_profile" "wen_dubois" {
  user                    = aws_iam_user.wen_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_dubois__platform_2_devs" {
  user   = aws_iam_user.wen_dubois.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user" "wen_dubois6995" {
  name = "fenlum-1bmogc-wen.dubois6995"
}

resource "aws_iam_user_login_profile" "wen_dubois6995" {
  user                    = aws_iam_user.wen_dubois6995.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_dubois6995__risk_5_devs" {
  user   = aws_iam_user.wen_dubois6995.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user" "wen_garcia" {
  name = "fenlum-1bmogc-wen.garcia"
}

resource "aws_iam_user_login_profile" "wen_garcia" {
  user                    = aws_iam_user.wen_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_garcia__trading_7_analysts" {
  user   = aws_iam_user.wen_garcia.name
  groups = [aws_iam_group.trading_7_analysts.name]
}

resource "aws_iam_user" "wen_garcia1541" {
  name = "fenlum-1bmogc-wen.garcia1541"
}

resource "aws_iam_user_group_membership" "wen_garcia1541__fraud_5_devs" {
  user   = aws_iam_user.wen_garcia1541.name
  groups = [aws_iam_group.fraud_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "wen_garcia1541__base_readonly" {
  user       = aws_iam_user.wen_garcia1541.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "wen_garcia1896" {
  name = "fenlum-1bmogc-wen.garcia1896"
}

resource "aws_iam_user_login_profile" "wen_garcia1896" {
  user                    = aws_iam_user.wen_garcia1896.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_garcia1896__payments_3_devs" {
  user   = aws_iam_user.wen_garcia1896.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "wen_garcia2393" {
  name = "fenlum-1bmogc-wen.garcia2393"
}

resource "aws_iam_user_group_membership" "wen_garcia2393__reporting_4_analysts" {
  user   = aws_iam_user.wen_garcia2393.name
  groups = [aws_iam_group.reporting_4_analysts.name]
}

resource "aws_iam_user_policy_attachment" "wen_garcia2393__base_readonly" {
  user       = aws_iam_user.wen_garcia2393.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "wen_gupta" {
  name = "fenlum-1bmogc-wen.gupta"
}

resource "aws_iam_user_group_membership" "wen_gupta__payments_6_devs" {
  user   = aws_iam_user.wen_gupta.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "wen_ivanov" {
  name = "fenlum-1bmogc-wen.ivanov"
}

resource "aws_iam_user_login_profile" "wen_ivanov" {
  user                    = aws_iam_user.wen_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_ivanov__lending_2_devs" {
  user   = aws_iam_user.wen_ivanov.name
  groups = [aws_iam_group.lending_2_devs.name]
}

resource "aws_iam_user" "wen_ivanov682" {
  name = "fenlum-1bmogc-wen.ivanov682"
}

resource "aws_iam_user_login_profile" "wen_ivanov682" {
  user                    = aws_iam_user.wen_ivanov682.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_ivanov682__mobile_4_devs" {
  user   = aws_iam_user.wen_ivanov682.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "wen_jones" {
  name = "fenlum-1bmogc-wen.jones"
}

resource "aws_iam_user_login_profile" "wen_jones" {
  user                    = aws_iam_user.wen_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_jones__lending_3_analysts" {
  user   = aws_iam_user.wen_jones.name
  groups = [aws_iam_group.lending_3_analysts.name]
}

resource "aws_iam_user_group_membership" "wen_jones__ledger_5_analysts" {
  user   = aws_iam_user.wen_jones.name
  groups = [aws_iam_group.ledger_5_analysts.name]
}

resource "aws_iam_user" "wen_khan" {
  name = "fenlum-1bmogc-wen.khan"
}

resource "aws_iam_user_group_membership" "wen_khan__kyc_4_devs" {
  user   = aws_iam_user.wen_khan.name
  groups = [aws_iam_group.kyc_4_devs.name]
}

resource "aws_iam_user" "wen_lopez" {
  name = "fenlum-1bmogc-wen.lopez"
}

resource "aws_iam_user_login_profile" "wen_lopez" {
  user                    = aws_iam_user.wen_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_lopez__platform_devs" {
  user   = aws_iam_user.wen_lopez.name
  groups = [aws_iam_group.platform_devs.name]
}

resource "aws_iam_user" "wen_lopez1695" {
  name = "fenlum-1bmogc-wen.lopez1695"
}

resource "aws_iam_user_group_membership" "wen_lopez1695__ledger_4_devs" {
  user   = aws_iam_user.wen_lopez1695.name
  groups = [aws_iam_group.ledger_4_devs.name]
}

resource "aws_iam_user" "wen_mehta" {
  name = "fenlum-1bmogc-wen.mehta"
}

resource "aws_iam_user_login_profile" "wen_mehta" {
  user                    = aws_iam_user.wen_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_mehta__treasury_4_devs" {
  user   = aws_iam_user.wen_mehta.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user" "wen_mehta3684" {
  name = "fenlum-1bmogc-wen.mehta3684"
}

resource "aws_iam_user_group_membership" "wen_mehta3684__kyc_5_devs" {
  user   = aws_iam_user.wen_mehta3684.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user_group_membership" "wen_mehta3684__reporting_3_analysts" {
  user   = aws_iam_user.wen_mehta3684.name
  groups = [aws_iam_group.reporting_3_analysts.name]
}

resource "aws_iam_user" "wen_miller" {
  name = "fenlum-1bmogc-wen.miller"
}

resource "aws_iam_user_login_profile" "wen_miller" {
  user                    = aws_iam_user.wen_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_miller__data_eng_2_devs" {
  user   = aws_iam_user.wen_miller.name
  groups = [aws_iam_group.data_eng_2_devs.name]
}

resource "aws_iam_user_policy_attachment" "wen_miller__base_readonly" {
  user       = aws_iam_user.wen_miller.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "wen_nguyen" {
  name = "fenlum-1bmogc-wen.nguyen"
}

resource "aws_iam_user_login_profile" "wen_nguyen" {
  user                    = aws_iam_user.wen_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_nguyen__lending_3_analysts" {
  user   = aws_iam_user.wen_nguyen.name
  groups = [aws_iam_group.lending_3_analysts.name]
}

resource "aws_iam_user" "wen_nguyen6717" {
  name = "fenlum-1bmogc-wen.nguyen6717"
}

resource "aws_iam_user_login_profile" "wen_nguyen6717" {
  user                    = aws_iam_user.wen_nguyen6717.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_nguyen6717__treasury_4_devs" {
  user   = aws_iam_user.wen_nguyen6717.name
  groups = [aws_iam_group.treasury_4_devs.name]
}

resource "aws_iam_user" "wen_novak" {
  name = "fenlum-1bmogc-wen.novak"
}

resource "aws_iam_user_login_profile" "wen_novak" {
  user                    = aws_iam_user.wen_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_novak__ledger_6_devs" {
  user   = aws_iam_user.wen_novak.name
  groups = [aws_iam_group.ledger_6_devs.name]
}

resource "aws_iam_user_group_membership" "wen_novak__treasury_3_analysts" {
  user   = aws_iam_user.wen_novak.name
  groups = [aws_iam_group.treasury_3_analysts.name]
}

resource "aws_iam_user" "wen_okafor" {
  name = "fenlum-1bmogc-wen.okafor"
}

resource "aws_iam_user_login_profile" "wen_okafor" {
  user                    = aws_iam_user.wen_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_okafor__treasury_6_devs" {
  user   = aws_iam_user.wen_okafor.name
  groups = [aws_iam_group.treasury_6_devs.name]
}

resource "aws_iam_user" "wen_patel" {
  name = "fenlum-1bmogc-wen.patel"
}

resource "aws_iam_user_login_profile" "wen_patel" {
  user                    = aws_iam_user.wen_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_patel__lending_2_analysts" {
  user   = aws_iam_user.wen_patel.name
  groups = [aws_iam_group.lending_2_analysts.name]
}

resource "aws_iam_user_group_membership" "wen_patel__trading_6_analysts" {
  user   = aws_iam_user.wen_patel.name
  groups = [aws_iam_group.trading_6_analysts.name]
}

resource "aws_iam_user" "wen_rossi" {
  name = "fenlum-1bmogc-wen.rossi"
}

resource "aws_iam_user_login_profile" "wen_rossi" {
  user                    = aws_iam_user.wen_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_rossi__payments_3_devs" {
  user   = aws_iam_user.wen_rossi.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "wen_singh" {
  name = "fenlum-1bmogc-wen.singh"
}

resource "aws_iam_user_login_profile" "wen_singh" {
  user                    = aws_iam_user.wen_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_singh__risk_5_devs" {
  user   = aws_iam_user.wen_singh.name
  groups = [aws_iam_group.risk_5_devs.name]
}

resource "aws_iam_user_group_membership" "wen_singh__kyc_4_analysts" {
  user   = aws_iam_user.wen_singh.name
  groups = [aws_iam_group.kyc_4_analysts.name]
}

resource "aws_iam_user" "wen_singh6342" {
  name = "fenlum-1bmogc-wen.singh6342"
}

resource "aws_iam_user_login_profile" "wen_singh6342" {
  user                    = aws_iam_user.wen_singh6342.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_singh6342__lending_4_analysts" {
  user   = aws_iam_user.wen_singh6342.name
  groups = [aws_iam_group.lending_4_analysts.name]
}

resource "aws_iam_user" "wen_tanaka" {
  name = "fenlum-1bmogc-wen.tanaka"
}

resource "aws_iam_user_login_profile" "wen_tanaka" {
  user                    = aws_iam_user.wen_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_tanaka__platform_devs" {
  user   = aws_iam_user.wen_tanaka.name
  groups = [aws_iam_group.platform_devs.name]
}

resource "aws_iam_user" "wen_wong" {
  name = "fenlum-1bmogc-wen.wong"
}

resource "aws_iam_user_login_profile" "wen_wong" {
  user                    = aws_iam_user.wen_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_wong__fraud_2_analysts" {
  user   = aws_iam_user.wen_wong.name
  groups = [aws_iam_group.fraud_2_analysts.name]
}

resource "aws_iam_user_group_membership" "wen_wong__risk_5_analysts" {
  user   = aws_iam_user.wen_wong.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user" "wen_wong2855" {
  name = "fenlum-1bmogc-wen.wong2855"
}

resource "aws_iam_user_login_profile" "wen_wong2855" {
  user                    = aws_iam_user.wen_wong2855.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_wong2855__data_eng_6_devs" {
  user   = aws_iam_user.wen_wong2855.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user" "xia_ali" {
  name = "fenlum-1bmogc-xia.ali"
}

resource "aws_iam_user_login_profile" "xia_ali" {
  user                    = aws_iam_user.xia_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_ali__ledger_devs" {
  user   = aws_iam_user.xia_ali.name
  groups = [aws_iam_group.ledger_devs.name]
}

resource "aws_iam_user" "xia_chen" {
  name = "fenlum-1bmogc-xia.chen"
}

resource "aws_iam_user_login_profile" "xia_chen" {
  user                    = aws_iam_user.xia_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_chen__reporting_3_devs" {
  user   = aws_iam_user.xia_chen.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user_group_membership" "xia_chen__lending_analysts" {
  user   = aws_iam_user.xia_chen.name
  groups = [aws_iam_group.lending_analysts.name]
}

resource "aws_iam_user" "xia_cohen" {
  name = "fenlum-1bmogc-xia.cohen"
}

resource "aws_iam_user_login_profile" "xia_cohen" {
  user                    = aws_iam_user.xia_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_cohen__platform_4_devs" {
  user   = aws_iam_user.xia_cohen.name
  groups = [aws_iam_group.platform_4_devs.name]
}

resource "aws_iam_user" "xia_garcia" {
  name = "fenlum-1bmogc-xia.garcia"
}

resource "aws_iam_user_login_profile" "xia_garcia" {
  user                    = aws_iam_user.xia_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_garcia__reporting_4_devs" {
  user   = aws_iam_user.xia_garcia.name
  groups = [aws_iam_group.reporting_4_devs.name]
}

resource "aws_iam_user" "xia_garcia9082" {
  name = "fenlum-1bmogc-xia.garcia9082"
}

resource "aws_iam_user_login_profile" "xia_garcia9082" {
  user                    = aws_iam_user.xia_garcia9082.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_garcia9082__platform_6_analysts" {
  user   = aws_iam_user.xia_garcia9082.name
  groups = [aws_iam_group.platform_6_analysts.name]
}

resource "aws_iam_user" "xia_haddad" {
  name = "fenlum-1bmogc-xia.haddad"
}

resource "aws_iam_user_group_membership" "xia_haddad__mobile_4_devs" {
  user   = aws_iam_user.xia_haddad.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "xia_jones" {
  name = "fenlum-1bmogc-xia.jones"
}

resource "aws_iam_user_login_profile" "xia_jones" {
  user                    = aws_iam_user.xia_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_jones__mobile_2_devs" {
  user   = aws_iam_user.xia_jones.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "xia_jones8619" {
  name = "fenlum-1bmogc-xia.jones8619"
}

resource "aws_iam_user_login_profile" "xia_jones8619" {
  user                    = aws_iam_user.xia_jones8619.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_jones8619__mobile_devs" {
  user   = aws_iam_user.xia_jones8619.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "xia_lopez" {
  name = "fenlum-1bmogc-xia.lopez"
}

resource "aws_iam_user_login_profile" "xia_lopez" {
  user                    = aws_iam_user.xia_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_lopez__data_eng_6_devs" {
  user   = aws_iam_user.xia_lopez.name
  groups = [aws_iam_group.data_eng_6_devs.name]
}

resource "aws_iam_user_group_membership" "xia_lopez__fraud_5_analysts" {
  user   = aws_iam_user.xia_lopez.name
  groups = [aws_iam_group.fraud_5_analysts.name]
}

resource "aws_iam_user" "xia_lopez4748" {
  name = "fenlum-1bmogc-xia.lopez4748"
}

resource "aws_iam_user_group_membership" "xia_lopez4748__trading_5_devs" {
  user   = aws_iam_user.xia_lopez4748.name
  groups = [aws_iam_group.trading_5_devs.name]
}

resource "aws_iam_user" "xia_lopez5170" {
  name = "fenlum-1bmogc-xia.lopez5170"
}

resource "aws_iam_user_login_profile" "xia_lopez5170" {
  user                    = aws_iam_user.xia_lopez5170.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_lopez5170__kyc_devs" {
  user   = aws_iam_user.xia_lopez5170.name
  groups = [aws_iam_group.kyc_devs.name]
}

resource "aws_iam_user_group_membership" "xia_lopez5170__trading_6_analysts" {
  user   = aws_iam_user.xia_lopez5170.name
  groups = [aws_iam_group.trading_6_analysts.name]
}

resource "aws_iam_user" "xia_mehta" {
  name = "fenlum-1bmogc-xia.mehta"
}

resource "aws_iam_user_login_profile" "xia_mehta" {
  user                    = aws_iam_user.xia_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_mehta__risk_6_devs" {
  user   = aws_iam_user.xia_mehta.name
  groups = [aws_iam_group.risk_6_devs.name]
}

resource "aws_iam_user_policy_attachment" "xia_mehta__base_readonly" {
  user       = aws_iam_user.xia_mehta.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "xia_mehta2109" {
  name = "fenlum-1bmogc-xia.mehta2109"
}

resource "aws_iam_user_login_profile" "xia_mehta2109" {
  user                    = aws_iam_user.xia_mehta2109.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_mehta2109__mobile_2_devs" {
  user   = aws_iam_user.xia_mehta2109.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user_group_membership" "xia_mehta2109__kyc_7_analysts" {
  user   = aws_iam_user.xia_mehta2109.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user" "xia_mehta3630" {
  name = "fenlum-1bmogc-xia.mehta3630"
}

resource "aws_iam_user_login_profile" "xia_mehta3630" {
  user                    = aws_iam_user.xia_mehta3630.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_mehta3630__platform_5_devs" {
  user   = aws_iam_user.xia_mehta3630.name
  groups = [aws_iam_group.platform_5_devs.name]
}

resource "aws_iam_user_policy_attachment" "xia_mehta3630__base_readonly" {
  user       = aws_iam_user.xia_mehta3630.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "xia_muller" {
  name = "fenlum-1bmogc-xia.muller"
}

resource "aws_iam_user_login_profile" "xia_muller" {
  user                    = aws_iam_user.xia_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_muller__payments_6_analysts" {
  user   = aws_iam_user.xia_muller.name
  groups = [aws_iam_group.payments_6_analysts.name]
}

resource "aws_iam_user" "xia_muller6828" {
  name = "fenlum-1bmogc-xia.muller6828"
}

resource "aws_iam_user_login_profile" "xia_muller6828" {
  user                    = aws_iam_user.xia_muller6828.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_muller6828__trading_4_analysts" {
  user   = aws_iam_user.xia_muller6828.name
  groups = [aws_iam_group.trading_4_analysts.name]
}

resource "aws_iam_user" "xia_nguyen" {
  name = "fenlum-1bmogc-xia.nguyen"
}

resource "aws_iam_user_login_profile" "xia_nguyen" {
  user                    = aws_iam_user.xia_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_nguyen__platform_5_analysts" {
  user   = aws_iam_user.xia_nguyen.name
  groups = [aws_iam_group.platform_5_analysts.name]
}

resource "aws_iam_user_group_membership" "xia_nguyen__mobile_6_analysts" {
  user   = aws_iam_user.xia_nguyen.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "xia_novak" {
  name = "fenlum-1bmogc-xia.novak"
}

resource "aws_iam_user_login_profile" "xia_novak" {
  user                    = aws_iam_user.xia_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_novak__mobile_5_devs" {
  user   = aws_iam_user.xia_novak.name
  groups = [aws_iam_group.mobile_5_devs.name]
}

resource "aws_iam_user" "xia_okafor" {
  name = "fenlum-1bmogc-xia.okafor"
}

resource "aws_iam_user_login_profile" "xia_okafor" {
  user                    = aws_iam_user.xia_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_okafor__trading_5_devs" {
  user   = aws_iam_user.xia_okafor.name
  groups = [aws_iam_group.trading_5_devs.name]
}

resource "aws_iam_user" "xia_okafor1918" {
  name = "fenlum-1bmogc-xia.okafor1918"
}

resource "aws_iam_user_login_profile" "xia_okafor1918" {
  user                    = aws_iam_user.xia_okafor1918.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_okafor1918__mobile_devs" {
  user   = aws_iam_user.xia_okafor1918.name
  groups = [aws_iam_group.mobile_devs.name]
}

resource "aws_iam_user" "xia_rossi" {
  name = "fenlum-1bmogc-xia.rossi"
}

resource "aws_iam_user_login_profile" "xia_rossi" {
  user                    = aws_iam_user.xia_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_rossi__fraud_7_devs" {
  user   = aws_iam_user.xia_rossi.name
  groups = [aws_iam_group.fraud_7_devs.name]
}

resource "aws_iam_user_group_membership" "xia_rossi__kyc_3_analysts" {
  user   = aws_iam_user.xia_rossi.name
  groups = [aws_iam_group.kyc_3_analysts.name]
}

resource "aws_iam_user" "xia_rossi1522" {
  name = "fenlum-1bmogc-xia.rossi1522"
}

resource "aws_iam_user_login_profile" "xia_rossi1522" {
  user                    = aws_iam_user.xia_rossi1522.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_rossi1522__mobile_4_devs" {
  user   = aws_iam_user.xia_rossi1522.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user_group_membership" "xia_rossi1522__data_eng_5_analysts" {
  user   = aws_iam_user.xia_rossi1522.name
  groups = [aws_iam_group.data_eng_5_analysts.name]
}

resource "aws_iam_user" "xia_rossi7077" {
  name = "fenlum-1bmogc-xia.rossi7077"
}

resource "aws_iam_user_login_profile" "xia_rossi7077" {
  user                    = aws_iam_user.xia_rossi7077.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_rossi7077__reporting_6_devs" {
  user   = aws_iam_user.xia_rossi7077.name
  groups = [aws_iam_group.reporting_6_devs.name]
}

resource "aws_iam_user" "xia_silva" {
  name = "fenlum-1bmogc-xia.silva"
}

resource "aws_iam_user_group_membership" "xia_silva__risk_7_devs" {
  user   = aws_iam_user.xia_silva.name
  groups = [aws_iam_group.risk_7_devs.name]
}

resource "aws_iam_user" "xia_singh" {
  name = "fenlum-1bmogc-xia.singh"
}

resource "aws_iam_user_login_profile" "xia_singh" {
  user                    = aws_iam_user.xia_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_singh__risk_analysts" {
  user   = aws_iam_user.xia_singh.name
  groups = [aws_iam_group.risk_analysts.name]
}

resource "aws_iam_user" "xia_smith" {
  name = "fenlum-1bmogc-xia.smith"
}

resource "aws_iam_user_login_profile" "xia_smith" {
  user                    = aws_iam_user.xia_smith.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_smith__treasury_7_analysts" {
  user   = aws_iam_user.xia_smith.name
  groups = [aws_iam_group.treasury_7_analysts.name]
}

resource "aws_iam_user" "xia_smith2582" {
  name = "fenlum-1bmogc-xia.smith2582"
}

resource "aws_iam_user_login_profile" "xia_smith2582" {
  user                    = aws_iam_user.xia_smith2582.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_smith2582__platform_2_analysts" {
  user   = aws_iam_user.xia_smith2582.name
  groups = [aws_iam_group.platform_2_analysts.name]
}

resource "aws_iam_user_group_membership" "xia_smith2582__fraud_7_analysts" {
  user   = aws_iam_user.xia_smith2582.name
  groups = [aws_iam_group.fraud_7_analysts.name]
}

resource "aws_iam_user" "xia_smith7089" {
  name = "fenlum-1bmogc-xia.smith7089"
}

resource "aws_iam_user_login_profile" "xia_smith7089" {
  user                    = aws_iam_user.xia_smith7089.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_smith7089__ledger_analysts" {
  user   = aws_iam_user.xia_smith7089.name
  groups = [aws_iam_group.ledger_analysts.name]
}

resource "aws_iam_user" "xia_smith7808" {
  name = "fenlum-1bmogc-xia.smith7808"
}

resource "aws_iam_user_login_profile" "xia_smith7808" {
  user                    = aws_iam_user.xia_smith7808.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_smith7808__data_eng_devs" {
  user   = aws_iam_user.xia_smith7808.name
  groups = [aws_iam_group.data_eng_devs.name]
}

resource "aws_iam_user" "xia_tanaka" {
  name = "fenlum-1bmogc-xia.tanaka"
}

resource "aws_iam_user_login_profile" "xia_tanaka" {
  user                    = aws_iam_user.xia_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "xia_tanaka__risk_2_analysts" {
  user   = aws_iam_user.xia_tanaka.name
  groups = [aws_iam_group.risk_2_analysts.name]
}

resource "aws_iam_user" "yara_brown" {
  name = "fenlum-1bmogc-yara.brown"
}

resource "aws_iam_user_login_profile" "yara_brown" {
  user                    = aws_iam_user.yara_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_brown__payments_4_devs" {
  user   = aws_iam_user.yara_brown.name
  groups = [aws_iam_group.payments_4_devs.name]
}

resource "aws_iam_user_group_membership" "yara_brown__treasury_5_analysts" {
  user   = aws_iam_user.yara_brown.name
  groups = [aws_iam_group.treasury_5_analysts.name]
}

resource "aws_iam_user" "yara_brown3097" {
  name = "fenlum-1bmogc-yara.brown3097"
}

resource "aws_iam_user_login_profile" "yara_brown3097" {
  user                    = aws_iam_user.yara_brown3097.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_brown3097__ledger_devs" {
  user   = aws_iam_user.yara_brown3097.name
  groups = [aws_iam_group.ledger_devs.name]
}

resource "aws_iam_user" "yara_chen" {
  name = "fenlum-1bmogc-yara.chen"
}

resource "aws_iam_user_login_profile" "yara_chen" {
  user                    = aws_iam_user.yara_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_chen__mobile_2_devs" {
  user   = aws_iam_user.yara_chen.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "yara_chen3015" {
  name = "fenlum-1bmogc-yara.chen3015"
}

resource "aws_iam_user_login_profile" "yara_chen3015" {
  user                    = aws_iam_user.yara_chen3015.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_chen3015__kyc_5_devs" {
  user   = aws_iam_user.yara_chen3015.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "yara_cohen" {
  name = "fenlum-1bmogc-yara.cohen"
}

resource "aws_iam_user_login_profile" "yara_cohen" {
  user                    = aws_iam_user.yara_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_cohen__kyc_5_analysts" {
  user   = aws_iam_user.yara_cohen.name
  groups = [aws_iam_group.kyc_5_analysts.name]
}

resource "aws_iam_user_policy_attachment" "yara_cohen__base_readonly" {
  user       = aws_iam_user.yara_cohen.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "yara_davis" {
  name = "fenlum-1bmogc-yara.davis"
}

resource "aws_iam_user_login_profile" "yara_davis" {
  user                    = aws_iam_user.yara_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_davis__mobile_analysts" {
  user   = aws_iam_user.yara_davis.name
  groups = [aws_iam_group.mobile_analysts.name]
}

resource "aws_iam_user" "yara_davis5576" {
  name = "fenlum-1bmogc-yara.davis5576"
}

resource "aws_iam_user_group_membership" "yara_davis5576__risk_5_analysts" {
  user   = aws_iam_user.yara_davis5576.name
  groups = [aws_iam_group.risk_5_analysts.name]
}

resource "aws_iam_user" "yara_dubois" {
  name = "fenlum-1bmogc-yara.dubois"
}

resource "aws_iam_user_group_membership" "yara_dubois__payments_7_devs" {
  user   = aws_iam_user.yara_dubois.name
  groups = [aws_iam_group.payments_7_devs.name]
}

resource "aws_iam_user" "yara_dubois9745" {
  name = "fenlum-1bmogc-yara.dubois9745"
}

resource "aws_iam_user_group_membership" "yara_dubois9745__fraud_devs" {
  user   = aws_iam_user.yara_dubois9745.name
  groups = [aws_iam_group.fraud_devs.name]
}

resource "aws_iam_user" "yara_garcia" {
  name = "fenlum-1bmogc-yara.garcia"
}

resource "aws_iam_user_login_profile" "yara_garcia" {
  user                    = aws_iam_user.yara_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_garcia__mobile_6_analysts" {
  user   = aws_iam_user.yara_garcia.name
  groups = [aws_iam_group.mobile_6_analysts.name]
}

resource "aws_iam_user" "yara_garcia1367" {
  name = "fenlum-1bmogc-yara.garcia1367"
}

resource "aws_iam_user_login_profile" "yara_garcia1367" {
  user                    = aws_iam_user.yara_garcia1367.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_garcia1367__risk_3_devs" {
  user   = aws_iam_user.yara_garcia1367.name
  groups = [aws_iam_group.risk_3_devs.name]
}

resource "aws_iam_user" "yara_gupta" {
  name = "fenlum-1bmogc-yara.gupta"
}

resource "aws_iam_user_login_profile" "yara_gupta" {
  user                    = aws_iam_user.yara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_gupta__treasury_6_analysts" {
  user   = aws_iam_user.yara_gupta.name
  groups = [aws_iam_group.treasury_6_analysts.name]
}

resource "aws_iam_user" "yara_haddad" {
  name = "fenlum-1bmogc-yara.haddad"
}

resource "aws_iam_user_login_profile" "yara_haddad" {
  user                    = aws_iam_user.yara_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_haddad__mobile_4_devs" {
  user   = aws_iam_user.yara_haddad.name
  groups = [aws_iam_group.mobile_4_devs.name]
}

resource "aws_iam_user" "yara_haddad7294" {
  name = "fenlum-1bmogc-yara.haddad7294"
}

resource "aws_iam_user_login_profile" "yara_haddad7294" {
  user                    = aws_iam_user.yara_haddad7294.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_haddad7294__payments_devs" {
  user   = aws_iam_user.yara_haddad7294.name
  groups = [aws_iam_group.payments_devs.name]
}

resource "aws_iam_user" "yara_ivanov" {
  name = "fenlum-1bmogc-yara.ivanov"
}

resource "aws_iam_user_login_profile" "yara_ivanov" {
  user                    = aws_iam_user.yara_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_ivanov__data_eng_5_analysts" {
  user   = aws_iam_user.yara_ivanov.name
  groups = [aws_iam_group.data_eng_5_analysts.name]
}

resource "aws_iam_user_group_membership" "yara_ivanov__fraud_3_analysts" {
  user   = aws_iam_user.yara_ivanov.name
  groups = [aws_iam_group.fraud_3_analysts.name]
}

resource "aws_iam_user" "yara_jones" {
  name = "fenlum-1bmogc-yara.jones"
}

resource "aws_iam_user_group_membership" "yara_jones__lending_devs" {
  user   = aws_iam_user.yara_jones.name
  groups = [aws_iam_group.lending_devs.name]
}

resource "aws_iam_user" "yara_khan" {
  name = "fenlum-1bmogc-yara.khan"
}

resource "aws_iam_user_login_profile" "yara_khan" {
  user                    = aws_iam_user.yara_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_khan__mobile_6_devs" {
  user   = aws_iam_user.yara_khan.name
  groups = [aws_iam_group.mobile_6_devs.name]
}

resource "aws_iam_user" "yara_mehta" {
  name = "fenlum-1bmogc-yara.mehta"
}

resource "aws_iam_user_group_membership" "yara_mehta__treasury_analysts" {
  user   = aws_iam_user.yara_mehta.name
  groups = [aws_iam_group.treasury_analysts.name]
}

resource "aws_iam_user_group_membership" "yara_mehta__fraud_analysts" {
  user   = aws_iam_user.yara_mehta.name
  groups = [aws_iam_group.fraud_analysts.name]
}

resource "aws_iam_user" "yara_mehta8204" {
  name = "fenlum-1bmogc-yara.mehta8204"
}

resource "aws_iam_user_login_profile" "yara_mehta8204" {
  user                    = aws_iam_user.yara_mehta8204.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_mehta8204__data_eng_4_analysts" {
  user   = aws_iam_user.yara_mehta8204.name
  groups = [aws_iam_group.data_eng_4_analysts.name]
}

resource "aws_iam_user" "yara_miller" {
  name = "fenlum-1bmogc-yara.miller"
}

resource "aws_iam_user_login_profile" "yara_miller" {
  user                    = aws_iam_user.yara_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_miller__lending_3_devs" {
  user   = aws_iam_user.yara_miller.name
  groups = [aws_iam_group.lending_3_devs.name]
}

resource "aws_iam_user" "yara_muller" {
  name = "fenlum-1bmogc-yara.muller"
}

resource "aws_iam_user_login_profile" "yara_muller" {
  user                    = aws_iam_user.yara_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_muller__platform_2_devs" {
  user   = aws_iam_user.yara_muller.name
  groups = [aws_iam_group.platform_2_devs.name]
}

resource "aws_iam_user_group_membership" "yara_muller__payments_2_analysts" {
  user   = aws_iam_user.yara_muller.name
  groups = [aws_iam_group.payments_2_analysts.name]
}

resource "aws_iam_user" "yara_novak" {
  name = "fenlum-1bmogc-yara.novak"
}

resource "aws_iam_user_login_profile" "yara_novak" {
  user                    = aws_iam_user.yara_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_novak__trading_3_devs" {
  user   = aws_iam_user.yara_novak.name
  groups = [aws_iam_group.trading_3_devs.name]
}

resource "aws_iam_user" "yara_okafor" {
  name = "fenlum-1bmogc-yara.okafor"
}

resource "aws_iam_user_login_profile" "yara_okafor" {
  user                    = aws_iam_user.yara_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_okafor__trading_4_analysts" {
  user   = aws_iam_user.yara_okafor.name
  groups = [aws_iam_group.trading_4_analysts.name]
}

resource "aws_iam_user_group_membership" "yara_okafor__lending_4_analysts" {
  user   = aws_iam_user.yara_okafor.name
  groups = [aws_iam_group.lending_4_analysts.name]
}

resource "aws_iam_user" "yara_rossi" {
  name = "fenlum-1bmogc-yara.rossi"
}

resource "aws_iam_user_login_profile" "yara_rossi" {
  user                    = aws_iam_user.yara_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_rossi__platform_5_analysts" {
  user   = aws_iam_user.yara_rossi.name
  groups = [aws_iam_group.platform_5_analysts.name]
}

resource "aws_iam_user" "yara_sato" {
  name = "fenlum-1bmogc-yara.sato"
}

resource "aws_iam_user_login_profile" "yara_sato" {
  user                    = aws_iam_user.yara_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_sato__data_eng_2_devs" {
  user   = aws_iam_user.yara_sato.name
  groups = [aws_iam_group.data_eng_2_devs.name]
}

resource "aws_iam_user" "yara_silva" {
  name = "fenlum-1bmogc-yara.silva"
}

resource "aws_iam_user_login_profile" "yara_silva" {
  user                    = aws_iam_user.yara_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_silva__fraud_4_devs" {
  user   = aws_iam_user.yara_silva.name
  groups = [aws_iam_group.fraud_4_devs.name]
}

resource "aws_iam_user_group_membership" "yara_silva__trading_5_analysts" {
  user   = aws_iam_user.yara_silva.name
  groups = [aws_iam_group.trading_5_analysts.name]
}

resource "aws_iam_user" "yara_tanaka" {
  name = "fenlum-1bmogc-yara.tanaka"
}

resource "aws_iam_user_login_profile" "yara_tanaka" {
  user                    = aws_iam_user.yara_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_tanaka__mobile_3_analysts" {
  user   = aws_iam_user.yara_tanaka.name
  groups = [aws_iam_group.mobile_3_analysts.name]
}

resource "aws_iam_user" "yara_wong" {
  name = "fenlum-1bmogc-yara.wong"
}

resource "aws_iam_user_login_profile" "yara_wong" {
  user                    = aws_iam_user.yara_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_wong__trading_2_analysts" {
  user   = aws_iam_user.yara_wong.name
  groups = [aws_iam_group.trading_2_analysts.name]
}

resource "aws_iam_user" "yara_wong3453" {
  name = "fenlum-1bmogc-yara.wong3453"
}

resource "aws_iam_user_login_profile" "yara_wong3453" {
  user                    = aws_iam_user.yara_wong3453.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_wong3453__payments_2_devs" {
  user   = aws_iam_user.yara_wong3453.name
  groups = [aws_iam_group.payments_2_devs.name]
}

resource "aws_iam_user" "zed_chen" {
  name = "fenlum-1bmogc-zed.chen"
}

resource "aws_iam_user_login_profile" "zed_chen" {
  user                    = aws_iam_user.zed_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_chen__reporting_3_devs" {
  user   = aws_iam_user.zed_chen.name
  groups = [aws_iam_group.reporting_3_devs.name]
}

resource "aws_iam_user" "zed_cohen" {
  name = "fenlum-1bmogc-zed.cohen"
}

resource "aws_iam_user_group_membership" "zed_cohen__treasury_2_devs" {
  user   = aws_iam_user.zed_cohen.name
  groups = [aws_iam_group.treasury_2_devs.name]
}

resource "aws_iam_user" "zed_cohen9769" {
  name = "fenlum-1bmogc-zed.cohen9769"
}

resource "aws_iam_user_login_profile" "zed_cohen9769" {
  user                    = aws_iam_user.zed_cohen9769.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_cohen9769__treasury_2_devs" {
  user   = aws_iam_user.zed_cohen9769.name
  groups = [aws_iam_group.treasury_2_devs.name]
}

resource "aws_iam_user" "zed_davis" {
  name = "fenlum-1bmogc-zed.davis"
}

resource "aws_iam_user_login_profile" "zed_davis" {
  user                    = aws_iam_user.zed_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_davis__platform_5_devs" {
  user   = aws_iam_user.zed_davis.name
  groups = [aws_iam_group.platform_5_devs.name]
}

resource "aws_iam_user" "zed_gupta" {
  name = "fenlum-1bmogc-zed.gupta"
}

resource "aws_iam_user_login_profile" "zed_gupta" {
  user                    = aws_iam_user.zed_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_gupta__risk_devs" {
  user   = aws_iam_user.zed_gupta.name
  groups = [aws_iam_group.risk_devs.name]
}

resource "aws_iam_user_group_membership" "zed_gupta__reporting_analysts" {
  user   = aws_iam_user.zed_gupta.name
  groups = [aws_iam_group.reporting_analysts.name]
}

resource "aws_iam_user" "zed_haddad" {
  name = "fenlum-1bmogc-zed.haddad"
}

resource "aws_iam_user_group_membership" "zed_haddad__treasury_analysts" {
  user   = aws_iam_user.zed_haddad.name
  groups = [aws_iam_group.treasury_analysts.name]
}

resource "aws_iam_user_group_membership" "zed_haddad__treasury_2_analysts" {
  user   = aws_iam_user.zed_haddad.name
  groups = [aws_iam_group.treasury_2_analysts.name]
}

resource "aws_iam_user" "zed_ivanov" {
  name = "fenlum-1bmogc-zed.ivanov"
}

resource "aws_iam_user_login_profile" "zed_ivanov" {
  user                    = aws_iam_user.zed_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_ivanov__payments_3_devs" {
  user   = aws_iam_user.zed_ivanov.name
  groups = [aws_iam_group.payments_3_devs.name]
}

resource "aws_iam_user" "zed_ivanov9971" {
  name = "fenlum-1bmogc-zed.ivanov9971"
}

resource "aws_iam_user_login_profile" "zed_ivanov9971" {
  user                    = aws_iam_user.zed_ivanov9971.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_ivanov9971__kyc_5_devs" {
  user   = aws_iam_user.zed_ivanov9971.name
  groups = [aws_iam_group.kyc_5_devs.name]
}

resource "aws_iam_user" "zed_jones" {
  name = "fenlum-1bmogc-zed.jones"
}

resource "aws_iam_user_login_profile" "zed_jones" {
  user                    = aws_iam_user.zed_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_jones__fraud_5_analysts" {
  user   = aws_iam_user.zed_jones.name
  groups = [aws_iam_group.fraud_5_analysts.name]
}

resource "aws_iam_user" "zed_khan" {
  name = "fenlum-1bmogc-zed.khan"
}

resource "aws_iam_user_login_profile" "zed_khan" {
  user                    = aws_iam_user.zed_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_khan__risk_devs" {
  user   = aws_iam_user.zed_khan.name
  groups = [aws_iam_group.risk_devs.name]
}

resource "aws_iam_user" "zed_kim" {
  name = "fenlum-1bmogc-zed.kim"
}

resource "aws_iam_user_login_profile" "zed_kim" {
  user                    = aws_iam_user.zed_kim.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_kim__lending_3_devs" {
  user   = aws_iam_user.zed_kim.name
  groups = [aws_iam_group.lending_3_devs.name]
}

resource "aws_iam_user_policy_attachment" "zed_kim__base_readonly" {
  user       = aws_iam_user.zed_kim.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "zed_larsen" {
  name = "fenlum-1bmogc-zed.larsen"
}

resource "aws_iam_user_login_profile" "zed_larsen" {
  user                    = aws_iam_user.zed_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_larsen__fraud_5_devs" {
  user   = aws_iam_user.zed_larsen.name
  groups = [aws_iam_group.fraud_5_devs.name]
}

resource "aws_iam_user_group_membership" "zed_larsen__fraud_7_analysts" {
  user   = aws_iam_user.zed_larsen.name
  groups = [aws_iam_group.fraud_7_analysts.name]
}

resource "aws_iam_user" "zed_larsen8934" {
  name = "fenlum-1bmogc-zed.larsen8934"
}

resource "aws_iam_user_login_profile" "zed_larsen8934" {
  user                    = aws_iam_user.zed_larsen8934.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_larsen8934__treasury_3_analysts" {
  user   = aws_iam_user.zed_larsen8934.name
  groups = [aws_iam_group.treasury_3_analysts.name]
}

resource "aws_iam_user" "zed_lopez" {
  name = "fenlum-1bmogc-zed.lopez"
}

resource "aws_iam_user_login_profile" "zed_lopez" {
  user                    = aws_iam_user.zed_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_lopez__payments_6_analysts" {
  user   = aws_iam_user.zed_lopez.name
  groups = [aws_iam_group.payments_6_analysts.name]
}

resource "aws_iam_user" "zed_mehta" {
  name = "fenlum-1bmogc-zed.mehta"
}

resource "aws_iam_user_login_profile" "zed_mehta" {
  user                    = aws_iam_user.zed_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_mehta__platform_4_analysts" {
  user   = aws_iam_user.zed_mehta.name
  groups = [aws_iam_group.platform_4_analysts.name]
}

resource "aws_iam_user" "zed_miller" {
  name = "fenlum-1bmogc-zed.miller"
}

resource "aws_iam_user_login_profile" "zed_miller" {
  user                    = aws_iam_user.zed_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_miller__trading_2_devs" {
  user   = aws_iam_user.zed_miller.name
  groups = [aws_iam_group.trading_2_devs.name]
}

resource "aws_iam_user" "zed_miller433" {
  name = "fenlum-1bmogc-zed.miller433"
}

resource "aws_iam_user_login_profile" "zed_miller433" {
  user                    = aws_iam_user.zed_miller433.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_miller433__kyc_3_devs" {
  user   = aws_iam_user.zed_miller433.name
  groups = [aws_iam_group.kyc_3_devs.name]
}

resource "aws_iam_user" "zed_miller5524" {
  name = "fenlum-1bmogc-zed.miller5524"
}

resource "aws_iam_user_login_profile" "zed_miller5524" {
  user                    = aws_iam_user.zed_miller5524.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_miller5524__data_eng_2_devs" {
  user   = aws_iam_user.zed_miller5524.name
  groups = [aws_iam_group.data_eng_2_devs.name]
}

resource "aws_iam_user" "zed_novak" {
  name = "fenlum-1bmogc-zed.novak"
}

resource "aws_iam_user_login_profile" "zed_novak" {
  user                    = aws_iam_user.zed_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_novak__fraud_devs" {
  user   = aws_iam_user.zed_novak.name
  groups = [aws_iam_group.fraud_devs.name]
}

resource "aws_iam_user" "zed_novak961" {
  name = "fenlum-1bmogc-zed.novak961"
}

resource "aws_iam_user_login_profile" "zed_novak961" {
  user                    = aws_iam_user.zed_novak961.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_novak961__lending_analysts" {
  user   = aws_iam_user.zed_novak961.name
  groups = [aws_iam_group.lending_analysts.name]
}

resource "aws_iam_user" "zed_okafor" {
  name = "fenlum-1bmogc-zed.okafor"
}

resource "aws_iam_user_login_profile" "zed_okafor" {
  user                    = aws_iam_user.zed_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_okafor__treasury_5_devs" {
  user   = aws_iam_user.zed_okafor.name
  groups = [aws_iam_group.treasury_5_devs.name]
}

resource "aws_iam_user" "zed_patel" {
  name = "fenlum-1bmogc-zed.patel"
}

resource "aws_iam_user_group_membership" "zed_patel__data_eng_4_devs" {
  user   = aws_iam_user.zed_patel.name
  groups = [aws_iam_group.data_eng_4_devs.name]
}

resource "aws_iam_user" "zed_patel4322" {
  name = "fenlum-1bmogc-zed.patel4322"
}

resource "aws_iam_user_login_profile" "zed_patel4322" {
  user                    = aws_iam_user.zed_patel4322.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_patel4322__lending_devs" {
  user   = aws_iam_user.zed_patel4322.name
  groups = [aws_iam_group.lending_devs.name]
}

resource "aws_iam_user_group_membership" "zed_patel4322__kyc_7_analysts" {
  user   = aws_iam_user.zed_patel4322.name
  groups = [aws_iam_group.kyc_7_analysts.name]
}

resource "aws_iam_user" "zed_reddy" {
  name = "fenlum-1bmogc-zed.reddy"
}

resource "aws_iam_user_group_membership" "zed_reddy__lending_6_devs" {
  user   = aws_iam_user.zed_reddy.name
  groups = [aws_iam_group.lending_6_devs.name]
}

resource "aws_iam_user_group_membership" "zed_reddy__payments_5_analysts" {
  user   = aws_iam_user.zed_reddy.name
  groups = [aws_iam_group.payments_5_analysts.name]
}

resource "aws_iam_user" "zed_sato" {
  name = "fenlum-1bmogc-zed.sato"
}

resource "aws_iam_user_group_membership" "zed_sato__payments_6_devs" {
  user   = aws_iam_user.zed_sato.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user_group_membership" "zed_sato__reporting_analysts" {
  user   = aws_iam_user.zed_sato.name
  groups = [aws_iam_group.reporting_analysts.name]
}

resource "aws_iam_user" "zed_silva" {
  name = "fenlum-1bmogc-zed.silva"
}

resource "aws_iam_user_login_profile" "zed_silva" {
  user                    = aws_iam_user.zed_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_silva__payments_6_devs" {
  user   = aws_iam_user.zed_silva.name
  groups = [aws_iam_group.payments_6_devs.name]
}

resource "aws_iam_user" "zed_singh" {
  name = "fenlum-1bmogc-zed.singh"
}

resource "aws_iam_user_login_profile" "zed_singh" {
  user                    = aws_iam_user.zed_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_singh__trading_2_devs" {
  user   = aws_iam_user.zed_singh.name
  groups = [aws_iam_group.trading_2_devs.name]
}

resource "aws_iam_user" "zed_singh4240" {
  name = "fenlum-1bmogc-zed.singh4240"
}

resource "aws_iam_user_login_profile" "zed_singh4240" {
  user                    = aws_iam_user.zed_singh4240.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_singh4240__treasury_3_analysts" {
  user   = aws_iam_user.zed_singh4240.name
  groups = [aws_iam_group.treasury_3_analysts.name]
}

resource "aws_iam_user_group_membership" "zed_singh4240__risk_6_analysts" {
  user   = aws_iam_user.zed_singh4240.name
  groups = [aws_iam_group.risk_6_analysts.name]
}

resource "aws_iam_user" "zed_singh6452" {
  name = "fenlum-1bmogc-zed.singh6452"
}

resource "aws_iam_user_login_profile" "zed_singh6452" {
  user                    = aws_iam_user.zed_singh6452.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_singh6452__risk_2_devs" {
  user   = aws_iam_user.zed_singh6452.name
  groups = [aws_iam_group.risk_2_devs.name]
}

resource "aws_iam_user" "zed_tanaka" {
  name = "fenlum-1bmogc-zed.tanaka"
}

resource "aws_iam_user_login_profile" "zed_tanaka" {
  user                    = aws_iam_user.zed_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_tanaka__mobile_2_devs" {
  user   = aws_iam_user.zed_tanaka.name
  groups = [aws_iam_group.mobile_2_devs.name]
}

resource "aws_iam_user" "zed_wong" {
  name = "fenlum-1bmogc-zed.wong"
}

resource "aws_iam_user_login_profile" "zed_wong" {
  user                    = aws_iam_user.zed_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "zed_wong__platform_devs" {
  user   = aws_iam_user.zed_wong.name
  groups = [aws_iam_group.platform_devs.name]
}

resource "aws_iam_user_policy_attachment" "zed_wong__base_readonly" {
  user       = aws_iam_user.zed_wong.name
  policy_arn = aws_iam_policy.base_readonly.arn
}
