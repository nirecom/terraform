resource "aws_iam_group_policy" "tfer--Administrators_AdministratorAccess-002D-Administrators-002D-201204150204" {
  group = "Administrators"
  name  = "AdministratorAccess-Administrators-201204150204"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY
}
