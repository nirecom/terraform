resource "aws_iam_role_policy" "tfer--flowlogsRole_oneClick_flowlogsRole_1490446714967" {
  name = "oneClick_flowlogsRole_1490446714967"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY

  role = "flowlogsRole"
}
