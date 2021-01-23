resource "aws_iam_user_group_membership" "tfer--hideaki-002D-nire-002F-Administrators" {
  groups = ["Administrators"]
  user   = "hideaki-nire"
}
