resource "aws_iam_user" "adm_bela_wong" {
  name = "kasol-zq0qg-adm-bela.wong"
}

resource "aws_iam_user_login_profile" "adm_bela_wong" {
  user                    = aws_iam_user.adm_bela_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_bela_wong__platform_admins" {
  user   = aws_iam_user.adm_bela_wong.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_priya_garcia" {
  name = "kasol-zq0qg-adm-priya.garcia"
}

resource "aws_iam_user_login_profile" "adm_priya_garcia" {
  user                    = aws_iam_user.adm_priya_garcia.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_priya_garcia__platform_admins" {
  user   = aws_iam_user.adm_priya_garcia.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "bob_mehta" {
  name = "kasol-zq0qg-bob.mehta"
}

resource "aws_iam_user_login_profile" "bob_mehta" {
  user                    = aws_iam_user.bob_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "bob_mehta__admissions_devs" {
  user   = aws_iam_user.bob_mehta.name
  groups = [aws_iam_group.admissions_devs.name]
}

resource "aws_iam_user" "carol_khan" {
  name = "kasol-zq0qg-carol.khan"
}

resource "aws_iam_user_login_profile" "carol_khan" {
  user                    = aws_iam_user.carol_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "carol_khan__admissions_devs" {
  user   = aws_iam_user.carol_khan.name
  groups = [aws_iam_group.admissions_devs.name]
}

resource "aws_iam_user_policy_attachment" "carol_khan__base_readonly" {
  user       = aws_iam_user.carol_khan.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "erin_okafor" {
  name = "kasol-zq0qg-erin.okafor"
}

resource "aws_iam_user_group_membership" "erin_okafor__research_computing_devs" {
  user   = aws_iam_user.erin_okafor.name
  groups = [aws_iam_group.research_computing_devs.name]
}

resource "aws_iam_user" "ext_fay_wong" {
  name = "kasol-zq0qg-ext-fay.wong"
}

resource "aws_iam_user_login_profile" "ext_fay_wong" {
  user                    = aws_iam_user.ext_fay_wong.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_fay_wong__contractors" {
  user   = aws_iam_user.ext_fay_wong.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_policy_attachment" "ext_fay_wong__inj_pol_p1" {
  user       = aws_iam_user.ext_fay_wong.name
  policy_arn = aws_iam_policy.inj_pol_p1.arn
}

resource "aws_iam_user" "ext_vik_novak" {
  name = "kasol-zq0qg-ext-vik.novak"
}

resource "aws_iam_user_login_profile" "ext_vik_novak" {
  user                    = aws_iam_user.ext_vik_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_vik_novak__contractors" {
  user   = aws_iam_user.ext_vik_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user" "fay_brown" {
  name = "kasol-zq0qg-fay.brown"
}

resource "aws_iam_user_group_membership" "fay_brown__admissions_analysts" {
  user   = aws_iam_user.fay_brown.name
  groups = [aws_iam_group.admissions_analysts.name]
}

resource "aws_iam_user" "gus_singh" {
  name = "kasol-zq0qg-gus.singh"
}

resource "aws_iam_user_group_membership" "gus_singh__library_analysts" {
  user   = aws_iam_user.gus_singh.name
  groups = [aws_iam_group.library_analysts.name]
}

resource "aws_iam_user" "lena_mehta" {
  name = "kasol-zq0qg-lena.mehta"
}

resource "aws_iam_user_login_profile" "lena_mehta" {
  user                    = aws_iam_user.lena_mehta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "lena_mehta__library_devs" {
  user   = aws_iam_user.lena_mehta.name
  groups = [aws_iam_group.library_devs.name]
}

resource "aws_iam_user_group_membership" "lena_mehta__lms_analysts" {
  user   = aws_iam_user.lena_mehta.name
  groups = [aws_iam_group.lms_analysts.name]
}

resource "aws_iam_user" "leo_chen" {
  name = "kasol-zq0qg-leo.chen"
}

resource "aws_iam_user_login_profile" "leo_chen" {
  user                    = aws_iam_user.leo_chen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_chen__library_devs" {
  user   = aws_iam_user.leo_chen.name
  groups = [aws_iam_group.library_devs.name]
}

resource "aws_iam_user" "leo_tanaka" {
  name = "kasol-zq0qg-leo.tanaka"
}

resource "aws_iam_user_login_profile" "leo_tanaka" {
  user                    = aws_iam_user.leo_tanaka.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "leo_tanaka__research_computing_devs" {
  user   = aws_iam_user.leo_tanaka.name
  groups = [aws_iam_group.research_computing_devs.name]
}

resource "aws_iam_user_group_membership" "leo_tanaka__research_computing_analysts" {
  user   = aws_iam_user.leo_tanaka.name
  groups = [aws_iam_group.research_computing_analysts.name]
}

resource "aws_iam_user_policy_attachment" "leo_tanaka__base_readonly" {
  user       = aws_iam_user.leo_tanaka.name
  policy_arn = aws_iam_policy.base_readonly.arn
}

resource "aws_iam_user" "mei_davis" {
  name = "kasol-zq0qg-mei.davis"
}

resource "aws_iam_user_group_membership" "mei_davis__library_devs" {
  user   = aws_iam_user.mei_davis.name
  groups = [aws_iam_group.library_devs.name]
}

resource "aws_iam_user_group_membership" "mei_davis__library_analysts" {
  user   = aws_iam_user.mei_davis.name
  groups = [aws_iam_group.library_analysts.name]
}

resource "aws_iam_user" "mei_ivanov" {
  name = "kasol-zq0qg-mei.ivanov"
}

resource "aws_iam_user_group_membership" "mei_ivanov__library_devs" {
  user   = aws_iam_user.mei_ivanov.name
  groups = [aws_iam_group.library_devs.name]
}

resource "aws_iam_user_group_membership" "mei_ivanov__library_analysts" {
  user   = aws_iam_user.mei_ivanov.name
  groups = [aws_iam_group.library_analysts.name]
}

resource "aws_iam_user" "nina_muller" {
  name = "kasol-zq0qg-nina.muller"
}

resource "aws_iam_user_login_profile" "nina_muller" {
  user                    = aws_iam_user.nina_muller.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_muller__lms_analysts" {
  user   = aws_iam_user.nina_muller.name
  groups = [aws_iam_group.lms_analysts.name]
}

resource "aws_iam_user" "noor_rossi" {
  name = "kasol-zq0qg-noor.rossi"
}

resource "aws_iam_user_group_membership" "noor_rossi__research_computing_analysts" {
  user   = aws_iam_user.noor_rossi.name
  groups = [aws_iam_group.research_computing_analysts.name]
}

resource "aws_iam_user" "noor_silva" {
  name = "kasol-zq0qg-noor.silva"
}

resource "aws_iam_user_login_profile" "noor_silva" {
  user                    = aws_iam_user.noor_silva.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "noor_silva__research_computing_devs" {
  user   = aws_iam_user.noor_silva.name
  groups = [aws_iam_group.research_computing_devs.name]
}

resource "aws_iam_user" "raj_brown" {
  name = "kasol-zq0qg-raj.brown"
}

resource "aws_iam_user_group_membership" "raj_brown__research_computing_devs" {
  user   = aws_iam_user.raj_brown.name
  groups = [aws_iam_group.research_computing_devs.name]
}

resource "aws_iam_user" "raj_brown7856" {
  name = "kasol-zq0qg-raj.brown7856"
}

resource "aws_iam_user_login_profile" "raj_brown7856" {
  user                    = aws_iam_user.raj_brown7856.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_brown7856__library_devs" {
  user   = aws_iam_user.raj_brown7856.name
  groups = [aws_iam_group.library_devs.name]
}

resource "aws_iam_user" "uma_miller" {
  name = "kasol-zq0qg-uma.miller"
}

resource "aws_iam_user_group_membership" "uma_miller__admissions_devs" {
  user   = aws_iam_user.uma_miller.name
  groups = [aws_iam_group.admissions_devs.name]
}

resource "aws_iam_user" "vik_haddad" {
  name = "kasol-zq0qg-vik.haddad"
}

resource "aws_iam_user_group_membership" "vik_haddad__admissions_devs" {
  user   = aws_iam_user.vik_haddad.name
  groups = [aws_iam_group.admissions_devs.name]
}

resource "aws_iam_user_group_membership" "vik_haddad__library_analysts" {
  user   = aws_iam_user.vik_haddad.name
  groups = [aws_iam_group.library_analysts.name]
}

resource "aws_iam_user" "yara_gupta" {
  name = "kasol-zq0qg-yara.gupta"
}

resource "aws_iam_user_login_profile" "yara_gupta" {
  user                    = aws_iam_user.yara_gupta.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_gupta__lms_devs" {
  user   = aws_iam_user.yara_gupta.name
  groups = [aws_iam_group.lms_devs.name]
}

resource "aws_iam_user" "yara_reddy" {
  name = "kasol-zq0qg-yara.reddy"
}

resource "aws_iam_user_login_profile" "yara_reddy" {
  user                    = aws_iam_user.yara_reddy.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "yara_reddy__library_devs" {
  user   = aws_iam_user.yara_reddy.name
  groups = [aws_iam_group.library_devs.name]
}
