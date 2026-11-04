resource "aws_iam_user" "adm_kia_mehta" {
  name = "zenax-zq111-adm-kia.mehta"
}

resource "aws_iam_user_login_profile" "adm_kia_mehta" {
  user                    = aws_iam_user.adm_kia_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_kia_mehta__platform_admins" {
  user   = aws_iam_user.adm_kia_mehta.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_kia_rossi" {
  name = "zenax-zq111-adm-kia.rossi"
}

resource "aws_iam_user_login_profile" "adm_kia_rossi" {
  user                    = aws_iam_user.adm_kia_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_kia_rossi__platform_admins" {
  user   = aws_iam_user.adm_kia_rossi.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_raj_dubois" {
  name = "zenax-zq111-adm-raj.dubois"
}

resource "aws_iam_user_login_profile" "adm_raj_dubois" {
  user                    = aws_iam_user.adm_raj_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_raj_dubois__platform_admins" {
  user   = aws_iam_user.adm_raj_dubois.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "amit_gupta" {
  name = "zenax-zq111-amit.gupta"
}

resource "aws_iam_user_login_profile" "amit_gupta" {
  user                    = aws_iam_user.amit_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_gupta__records_devs" {
  user   = aws_iam_user.amit_gupta.name
  groups = [aws_iam_group.records_devs.name]
}

resource "aws_iam_user" "bela_jones" {
  name = "zenax-zq111-bela.jones"
}

resource "aws_iam_user_login_profile" "bela_jones" {
  user                    = aws_iam_user.bela_jones.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bela_jones__licensing_devs" {
  user   = aws_iam_user.bela_jones.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user" "bob_larsen" {
  name = "zenax-zq111-bob.larsen"
}

resource "aws_iam_user_login_profile" "bob_larsen" {
  user                    = aws_iam_user.bob_larsen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_larsen__gis_devs" {
  user   = aws_iam_user.bob_larsen.name
  groups = [aws_iam_group.gis_devs.name]
}

resource "aws_iam_user" "chen_smith" {
  name = "zenax-zq111-chen.smith"
}

resource "aws_iam_user_group_membership" "chen_smith__licensing_devs" {
  user   = aws_iam_user.chen_smith.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user_group_membership" "chen_smith__licensing_analysts" {
  user   = aws_iam_user.chen_smith.name
  groups = [aws_iam_group.licensing_analysts.name]
}

resource "aws_iam_user" "eli_ivanov" {
  name = "zenax-zq111-eli.ivanov"
}

resource "aws_iam_user_login_profile" "eli_ivanov" {
  user                    = aws_iam_user.eli_ivanov.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "eli_ivanov__gis_devs" {
  user   = aws_iam_user.eli_ivanov.name
  groups = [aws_iam_group.gis_devs.name]
}

resource "aws_iam_user" "erin_patel" {
  name = "zenax-zq111-erin.patel"
}

resource "aws_iam_user_login_profile" "erin_patel" {
  user                    = aws_iam_user.erin_patel.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_patel__licensing_devs" {
  user   = aws_iam_user.erin_patel.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user" "ext_mei_haddad" {
  name = "zenax-zq111-ext-mei.haddad"
}

resource "aws_iam_user_login_profile" "ext_mei_haddad" {
  user                    = aws_iam_user.ext_mei_haddad.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mei_haddad__contractors" {
  user   = aws_iam_user.ext_mei_haddad.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_mei_haddad__citizen_portal_analysts" {
  user   = aws_iam_user.ext_mei_haddad.name
  groups = [aws_iam_group.citizen_portal_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ext_mei_haddad__inj_legacy_p1" {
  user       = aws_iam_user.ext_mei_haddad.name
  policy_arn = aws_iam_policy.inj_legacy_p1.arn
}

resource "aws_iam_user_policy_attachment" "ext_mei_haddad__inj_pol_p2" {
  user       = aws_iam_user.ext_mei_haddad.name
  policy_arn = aws_iam_policy.inj_pol_p2.arn
}

resource "aws_iam_user_policy_attachment" "ext_mei_haddad__inj_pol_p5" {
  user       = aws_iam_user.ext_mei_haddad.name
  policy_arn = aws_iam_policy.inj_pol_p5.arn
}

resource "aws_iam_user" "ext_sara_singh" {
  name = "zenax-zq111-ext-sara.singh"
}

resource "aws_iam_user_login_profile" "ext_sara_singh" {
  user                    = aws_iam_user.ext_sara_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_sara_singh__contractors" {
  user   = aws_iam_user.ext_sara_singh.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_sara_singh__records_analysts" {
  user   = aws_iam_user.ext_sara_singh.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user" "judy_muller" {
  name = "zenax-zq111-judy.muller"
}

resource "aws_iam_user_login_profile" "judy_muller" {
  user                    = aws_iam_user.judy_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "judy_muller__licensing_devs" {
  user   = aws_iam_user.judy_muller.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user" "jun_ivanov" {
  name = "zenax-zq111-jun.ivanov"
}

resource "aws_iam_user_group_membership" "jun_ivanov__records_devs" {
  user   = aws_iam_user.jun_ivanov.name
  groups = [aws_iam_group.records_devs.name]
}

resource "aws_iam_user_policy_attachment" "jun_ivanov__base_readonly" {
  user       = aws_iam_user.jun_ivanov.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "jun_silva" {
  name = "zenax-zq111-jun.silva"
}

resource "aws_iam_user_login_profile" "jun_silva" {
  user                    = aws_iam_user.jun_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "jun_silva__records_analysts" {
  user   = aws_iam_user.jun_silva.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user" "kia_mehta" {
  name = "zenax-zq111-kia.mehta"
}

resource "aws_iam_user_login_profile" "kia_mehta" {
  user                    = aws_iam_user.kia_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "kia_mehta__citizen_portal_devs" {
  user   = aws_iam_user.kia_mehta.name
  groups = [aws_iam_group.citizen_portal_devs.name]
}

resource "aws_iam_user" "lena_silva" {
  name = "zenax-zq111-lena.silva"
}

resource "aws_iam_user_login_profile" "lena_silva" {
  user                    = aws_iam_user.lena_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_silva__citizen_portal_devs" {
  user   = aws_iam_user.lena_silva.name
  groups = [aws_iam_group.citizen_portal_devs.name]
}

resource "aws_iam_user_group_membership" "lena_silva__citizen_portal_analysts" {
  user   = aws_iam_user.lena_silva.name
  groups = [aws_iam_group.citizen_portal_analysts.name]
}

resource "aws_iam_user" "nina_muller" {
  name = "zenax-zq111-nina.muller"
}

resource "aws_iam_user_login_profile" "nina_muller" {
  user                    = aws_iam_user.nina_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_muller__licensing_devs" {
  user   = aws_iam_user.nina_muller.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user" "noor_miller" {
  name = "zenax-zq111-noor.miller"
}

resource "aws_iam_user_login_profile" "noor_miller" {
  user                    = aws_iam_user.noor_miller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_miller__records_devs" {
  user   = aws_iam_user.noor_miller.name
  groups = [aws_iam_group.records_devs.name]
}

resource "aws_iam_user" "omar_ali" {
  name = "zenax-zq111-omar.ali"
}

resource "aws_iam_user_login_profile" "omar_ali" {
  user                    = aws_iam_user.omar_ali.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "omar_ali__records_devs" {
  user   = aws_iam_user.omar_ali.name
  groups = [aws_iam_group.records_devs.name]
}

resource "aws_iam_user" "omar_rossi" {
  name = "zenax-zq111-omar.rossi"
}

resource "aws_iam_user_group_membership" "omar_rossi__licensing_devs" {
  user   = aws_iam_user.omar_rossi.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user" "quinn_okafor" {
  name = "zenax-zq111-quinn.okafor"
}

resource "aws_iam_user_group_membership" "quinn_okafor__records_devs" {
  user   = aws_iam_user.quinn_okafor.name
  groups = [aws_iam_group.records_devs.name]
}

resource "aws_iam_user_policy_attachment" "quinn_okafor__inj_pol_p8" {
  user       = aws_iam_user.quinn_okafor.name
  policy_arn = aws_iam_policy.inj_pol_p8.arn
}

resource "aws_iam_user" "tom_tanaka" {
  name = "zenax-zq111-tom.tanaka"
}

resource "aws_iam_user_login_profile" "tom_tanaka" {
  user                    = aws_iam_user.tom_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "tom_tanaka__licensing_devs" {
  user   = aws_iam_user.tom_tanaka.name
  groups = [aws_iam_group.licensing_devs.name]
}

resource "aws_iam_user" "uma_gupta" {
  name = "zenax-zq111-uma.gupta"
}

resource "aws_iam_user_login_profile" "uma_gupta" {
  user                    = aws_iam_user.uma_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "uma_gupta__gis_devs" {
  user   = aws_iam_user.uma_gupta.name
  groups = [aws_iam_group.gis_devs.name]
}

resource "aws_iam_user" "vik_chen" {
  name = "zenax-zq111-vik.chen"
}

resource "aws_iam_user_login_profile" "vik_chen" {
  user                    = aws_iam_user.vik_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_chen__gis_devs" {
  user   = aws_iam_user.vik_chen.name
  groups = [aws_iam_group.gis_devs.name]
}

resource "aws_iam_user" "vik_reddy" {
  name = "zenax-zq111-vik.reddy"
}

resource "aws_iam_user_login_profile" "vik_reddy" {
  user                    = aws_iam_user.vik_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "vik_reddy__citizen_portal_devs" {
  user   = aws_iam_user.vik_reddy.name
  groups = [aws_iam_group.citizen_portal_devs.name]
}

resource "aws_iam_user" "wen_lopez" {
  name = "zenax-zq111-wen.lopez"
}

resource "aws_iam_user_login_profile" "wen_lopez" {
  user                    = aws_iam_user.wen_lopez.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "wen_lopez__gis_analysts" {
  user   = aws_iam_user.wen_lopez.name
  groups = [aws_iam_group.gis_analysts.name]
}
