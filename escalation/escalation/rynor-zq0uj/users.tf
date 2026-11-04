resource "aws_iam_user" "adm_ian_patel" {
  name = "rynor-zq0uj-adm-ian.patel"
}

resource "aws_iam_user_login_profile" "adm_ian_patel" {
  user                    = aws_iam_user.adm_ian_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_ian_patel__platform_admins" {
  user   = aws_iam_user.adm_ian_patel.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_yara_reddy" {
  name = "rynor-zq0uj-adm-yara.reddy"
}

resource "aws_iam_user_login_profile" "adm_yara_reddy" {
  user                    = aws_iam_user.adm_yara_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_yara_reddy__platform_admins" {
  user   = aws_iam_user.adm_yara_reddy.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "amit_khan" {
  name = "rynor-zq0uj-amit.khan"
}

resource "aws_iam_user_login_profile" "amit_khan" {
  user                    = aws_iam_user.amit_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_khan__imaging_analysts" {
  user   = aws_iam_user.amit_khan.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user" "bela_jones" {
  name = "rynor-zq0uj-bela.jones"
}

resource "aws_iam_user_group_membership" "bela_jones__imaging_devs" {
  user   = aws_iam_user.bela_jones.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "bela_khan" {
  name = "rynor-zq0uj-bela.khan"
}

resource "aws_iam_user_login_profile" "bela_khan" {
  user                    = aws_iam_user.bela_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_khan__imaging_devs" {
  user   = aws_iam_user.bela_khan.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user_group_membership" "bela_khan__imaging_analysts" {
  user   = aws_iam_user.bela_khan.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user_policy_attachment" "bela_khan__base_readonly" {
  user       = aws_iam_user.bela_khan.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "dave_nguyen" {
  name = "rynor-zq0uj-dave.nguyen"
}

resource "aws_iam_user_login_profile" "dave_nguyen" {
  user                    = aws_iam_user.dave_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "dave_nguyen__imaging_devs" {
  user   = aws_iam_user.dave_nguyen.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "eli_gupta" {
  name = "rynor-zq0uj-eli.gupta"
}

resource "aws_iam_user_login_profile" "eli_gupta" {
  user                    = aws_iam_user.eli_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_gupta__patient_portal_devs" {
  user   = aws_iam_user.eli_gupta.name
  groups = [aws_iam_group.patient_portal_devs.name]
}

resource "aws_iam_user" "eli_haddad" {
  name = "rynor-zq0uj-eli.haddad"
}

resource "aws_iam_user_login_profile" "eli_haddad" {
  user                    = aws_iam_user.eli_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_haddad__billing_devs" {
  user   = aws_iam_user.eli_haddad.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "ext_mei_cohen" {
  name = "rynor-zq0uj-ext-mei.cohen"
}

resource "aws_iam_user_login_profile" "ext_mei_cohen" {
  user                    = aws_iam_user.ext_mei_cohen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mei_cohen__contractors" {
  user   = aws_iam_user.ext_mei_cohen.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_mei_cohen__imaging_analysts" {
  user   = aws_iam_user.ext_mei_cohen.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user" "ext_zed_rossi" {
  name = "rynor-zq0uj-ext-zed.rossi"
}

resource "aws_iam_user_login_profile" "ext_zed_rossi" {
  user                    = aws_iam_user.ext_zed_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_zed_rossi__contractors" {
  user   = aws_iam_user.ext_zed_rossi.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "fay_novak" {
  name = "rynor-zq0uj-fay.novak"
}

resource "aws_iam_user_login_profile" "fay_novak" {
  user                    = aws_iam_user.fay_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "fay_novak__clinical_data_analysts" {
  user   = aws_iam_user.fay_novak.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user" "frank_khan" {
  name = "rynor-zq0uj-frank.khan"
}

resource "aws_iam_user_login_profile" "frank_khan" {
  user                    = aws_iam_user.frank_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "frank_khan__clinical_data_analysts" {
  user   = aws_iam_user.frank_khan.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user_group_membership" "frank_khan__billing_analysts" {
  user   = aws_iam_user.frank_khan.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "hana_chen" {
  name = "rynor-zq0uj-hana.chen"
}

resource "aws_iam_user_login_profile" "hana_chen" {
  user                    = aws_iam_user.hana_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "hana_chen__billing_devs" {
  user   = aws_iam_user.hana_chen.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "inj_svc_u9" {
  name = "rynor-zq0uj-inj-svc-u9"
}

resource "aws_iam_user_login_profile" "inj_svc_u9" {
  user                    = aws_iam_user.inj_svc_u9.name
  password_reset_required = true
}

resource "aws_iam_user_policy_attachment" "inj_svc_u9__inj_pol_p11" {
  user       = aws_iam_user.inj_svc_u9.name
  policy_arn = aws_iam_policy.inj_pol_p11.arn
}

resource "aws_iam_user" "judy_jones" {
  name = "rynor-zq0uj-judy.jones"
}

resource "aws_iam_user_login_profile" "judy_jones" {
  user                    = aws_iam_user.judy_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_jones__billing_devs" {
  user   = aws_iam_user.judy_jones.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user_policy_attachment" "judy_jones__base_readonly" {
  user       = aws_iam_user.judy_jones.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "jun_sato" {
  name = "rynor-zq0uj-jun.sato"
}

resource "aws_iam_user_login_profile" "jun_sato" {
  user                    = aws_iam_user.jun_sato.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_sato__imaging_devs" {
  user   = aws_iam_user.jun_sato.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "karl_novak" {
  name = "rynor-zq0uj-karl.novak"
}

resource "aws_iam_user_login_profile" "karl_novak" {
  user                    = aws_iam_user.karl_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "karl_novak__imaging_devs" {
  user   = aws_iam_user.karl_novak.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "kia_kim" {
  name = "rynor-zq0uj-kia.kim"
}

resource "aws_iam_user_group_membership" "kia_kim__clinical_data_analysts" {
  user   = aws_iam_user.kia_kim.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user_group_membership" "kia_kim__billing_analysts" {
  user   = aws_iam_user.kia_kim.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user_policy_attachment" "kia_kim__base_readonly" {
  user       = aws_iam_user.kia_kim.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "kia_novak" {
  name = "rynor-zq0uj-kia.novak"
}

resource "aws_iam_user_login_profile" "kia_novak" {
  user                    = aws_iam_user.kia_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_novak__clinical_data_analysts" {
  user   = aws_iam_user.kia_novak.name
  groups = [aws_iam_group.clinical_data_analysts.name]
}

resource "aws_iam_user_group_membership" "kia_novak__billing_analysts" {
  user   = aws_iam_user.kia_novak.name
  groups = [aws_iam_group.billing_analysts.name]
}

resource "aws_iam_user" "kia_reddy" {
  name = "rynor-zq0uj-kia.reddy"
}

resource "aws_iam_user_login_profile" "kia_reddy" {
  user                    = aws_iam_user.kia_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_reddy__billing_devs" {
  user   = aws_iam_user.kia_reddy.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "leo_brown" {
  name = "rynor-zq0uj-leo.brown"
}

resource "aws_iam_user_login_profile" "leo_brown" {
  user                    = aws_iam_user.leo_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_brown__billing_devs" {
  user   = aws_iam_user.leo_brown.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "leo_okafor" {
  name = "rynor-zq0uj-leo.okafor"
}

resource "aws_iam_user_login_profile" "leo_okafor" {
  user                    = aws_iam_user.leo_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_okafor__imaging_devs" {
  user   = aws_iam_user.leo_okafor.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "mei_garcia" {
  name = "rynor-zq0uj-mei.garcia"
}

resource "aws_iam_user_login_profile" "mei_garcia" {
  user                    = aws_iam_user.mei_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "mei_garcia__billing_devs" {
  user   = aws_iam_user.mei_garcia.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user" "mike_ali" {
  name = "rynor-zq0uj-mike.ali"
}

resource "aws_iam_user_group_membership" "mike_ali__imaging_devs" {
  user   = aws_iam_user.mike_ali.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user" "quinn_ivanov" {
  name = "rynor-zq0uj-quinn.ivanov"
}

resource "aws_iam_user_login_profile" "quinn_ivanov" {
  user                    = aws_iam_user.quinn_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "quinn_ivanov__imaging_devs" {
  user   = aws_iam_user.quinn_ivanov.name
  groups = [aws_iam_group.imaging_devs.name]
}

resource "aws_iam_user_group_membership" "quinn_ivanov__imaging_analysts" {
  user   = aws_iam_user.quinn_ivanov.name
  groups = [aws_iam_group.imaging_analysts.name]
}

resource "aws_iam_user" "raj_larsen" {
  name = "rynor-zq0uj-raj.larsen"
}

resource "aws_iam_user_login_profile" "raj_larsen" {
  user                    = aws_iam_user.raj_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_larsen__clinical_data_devs" {
  user   = aws_iam_user.raj_larsen.name
  groups = [aws_iam_group.clinical_data_devs.name]
}

resource "aws_iam_user" "wen_okafor" {
  name = "rynor-zq0uj-wen.okafor"
}

resource "aws_iam_user_login_profile" "wen_okafor" {
  user                    = aws_iam_user.wen_okafor.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_okafor__billing_devs" {
  user   = aws_iam_user.wen_okafor.name
  groups = [aws_iam_group.billing_devs.name]
}

resource "aws_iam_user_group_membership" "wen_okafor__inj_grp_g7" {
  user   = aws_iam_user.wen_okafor.name
  groups = [aws_iam_group.inj_grp_g7.name]
}

resource "aws_iam_user_policy_attachment" "wen_okafor__inj_pol_p8" {
  user       = aws_iam_user.wen_okafor.name
  policy_arn = aws_iam_policy.inj_pol_p8.arn
}
