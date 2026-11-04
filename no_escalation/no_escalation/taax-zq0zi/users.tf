resource "aws_iam_user" "adm_mei_davis" {
  name = "taax-zq0zi-adm-mei.davis"
}

resource "aws_iam_user_login_profile" "adm_mei_davis" {
  user                    = aws_iam_user.adm_mei_davis.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_mei_davis__platform_admins" {
  user   = aws_iam_user.adm_mei_davis.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "adm_wen_brown" {
  name = "taax-zq0zi-adm-wen.brown"
}

resource "aws_iam_user_login_profile" "adm_wen_brown" {
  user                    = aws_iam_user.adm_wen_brown.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "adm_wen_brown__platform_admins" {
  user   = aws_iam_user.adm_wen_brown.name
  groups = [aws_iam_group.platform_admins.name]
}

resource "aws_iam_user" "amit_singh" {
  name = "taax-zq0zi-amit.singh"
}

resource "aws_iam_user_login_profile" "amit_singh" {
  user                    = aws_iam_user.amit_singh.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "amit_singh__records_analysts" {
  user   = aws_iam_user.amit_singh.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user_policy_attachment" "amit_singh__inj_legacy_p3" {
  user       = aws_iam_user.amit_singh.name
  policy_arn = aws_iam_policy.inj_legacy_p3.arn
}

resource "aws_iam_user_policy_attachment" "amit_singh__inj_pol_p4" {
  user       = aws_iam_user.amit_singh.name
  policy_arn = aws_iam_policy.inj_pol_p4.arn
}

resource "aws_iam_user" "erin_nguyen" {
  name = "taax-zq0zi-erin.nguyen"
}

resource "aws_iam_user_login_profile" "erin_nguyen" {
  user                    = aws_iam_user.erin_nguyen.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "erin_nguyen__citizen_portal_analysts" {
  user   = aws_iam_user.erin_nguyen.name
  groups = [aws_iam_group.citizen_portal_analysts.name]
}

resource "aws_iam_user" "ext_mike_novak" {
  name = "taax-zq0zi-ext-mike.novak"
}

resource "aws_iam_user_login_profile" "ext_mike_novak" {
  user                    = aws_iam_user.ext_mike_novak.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_mike_novak__contractors" {
  user   = aws_iam_user.ext_mike_novak.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_mike_novak__citizen_portal_analysts" {
  user   = aws_iam_user.ext_mike_novak.name
  groups = [aws_iam_group.citizen_portal_analysts.name]
}

resource "aws_iam_user" "ext_nina_dubois" {
  name = "taax-zq0zi-ext-nina.dubois"
}

resource "aws_iam_user_login_profile" "ext_nina_dubois" {
  user                    = aws_iam_user.ext_nina_dubois.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "ext_nina_dubois__contractors" {
  user   = aws_iam_user.ext_nina_dubois.name
  groups = [aws_iam_group.contractors.name]
}

resource "aws_iam_user_group_membership" "ext_nina_dubois__records_analysts" {
  user   = aws_iam_user.ext_nina_dubois.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user_policy_attachment" "ext_nina_dubois__inj_pol_p1" {
  user       = aws_iam_user.ext_nina_dubois.name
  policy_arn = aws_iam_policy.inj_pol_p1.arn
}

resource "aws_iam_user" "nina_khan" {
  name = "taax-zq0zi-nina.khan"
}

resource "aws_iam_user_login_profile" "nina_khan" {
  user                    = aws_iam_user.nina_khan.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "nina_khan__records_analysts" {
  user   = aws_iam_user.nina_khan.name
  groups = [aws_iam_group.records_analysts.name]
}

resource "aws_iam_user" "raj_rossi" {
  name = "taax-zq0zi-raj.rossi"
}

resource "aws_iam_user_login_profile" "raj_rossi" {
  user                    = aws_iam_user.raj_rossi.name
  password_reset_required = true
}

resource "aws_iam_user_group_membership" "raj_rossi__records_devs" {
  user   = aws_iam_user.raj_rossi.name
  groups = [aws_iam_group.records_devs.name]
}
