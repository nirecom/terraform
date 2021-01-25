resource "aws_iam_user_policy" "tfer--ses-002D-smtp-002D-user-002E-20170326_AmazonSesSendingAccess" {
  name = "AmazonSesSendingAccess"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ses:SendRawEmail",
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "ses-smtp-user.20170326"
}
