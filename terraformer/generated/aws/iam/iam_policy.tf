resource "aws_iam_policy" "tfer--AWS_Events_Invoke_Action_On_EC2_Instance_1522112718" {
  name = "AWS_Events_Invoke_Action_On_EC2_Instance_1522112718"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:RebootInstances",
        "ec2:StopInstances",
        "ec2:TerminateInstances"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:ec2:ap-northeast-1:313411955421:instance/i-03ad72779fb819386"
      ],
      "Sid": "CloudWatchEventsBuiltInTargetExecutionAccess"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--NirecomCloudFrontInvalidate" {
  name = "NirecomCloudFrontInvalidate"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "cloudfront:GetDistribution",
        "cloudfront:ListInvalidations",
        "cloudfront:GetStreamingDistribution",
        "cloudfront:GetDistributionConfig",
        "cloudfront:GetInvalidation",
        "cloudfront:CreateInvalidation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:cloudfront::313411955421:distribution/E2I4FG7OX4ELKA",
        "arn:aws:cloudfront::313411955421:distribution/E36UG0XK3U04Q3"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--NirecomS3FullAccess" {
  name = "NirecomS3FullAccess"
  path = "/"

  policy = <<POLICY
{\r
    \"Version\": \"2012-10-17\",\r
    \"Statement\": [\r
        {\r
            \"Sid\": \"AllowUserToSeeBucketListInTheConsole\",\r
            \"Action\": [\"s3:ListAllMyBuckets\", \"s3:GetBucketLocation\"],\r
            \"Effect\": \"Allow\",\r
            \"Resource\": [\"arn:aws:s3:::*\"]\r
        },\r
        {\r
            \"Sid\": \"AllowRootAndContentListing\",\r
            \"Action\": [\"s3:ListBucket\"],\r
            \"Effect\": \"Allow\",\r
            \"Resource\": [\r
                \"arn:aws:s3:::www.nire.com\",\r
                \"arn:aws:s3:::kurashibit.nire.com\"\r
            ],\r
            \"Condition\":{\"StringEquals\":{\"s3:prefix\":[\"\",\"wp-content/\",\"wp-content/uploads/\"],\"s3:delimiter\":[\"/\"]}}\r
        },\r
        {\r
            \"Effect\": \"Allow\",\r
            \"Action\": \"s3:*\",\r
            \"Resource\": [\r
                \"arn:aws:s3:::www.nire.com/wp-content/uploads/*\",\r
                \"arn:aws:s3:::kurashibit.nire.com/wp-content/uploads/*\"\r
            ]\r
        }\r
    ]\r
}
POLICY
}

resource "aws_iam_policy" "tfer--NirecomS3ReadAccess" {
  name = "NirecomS3ReadAccess"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:GetBucketLocation"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::*"
      ],
      "Sid": "AllowUserToSeeBucketListInTheConsole"
    },
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Condition": {
        "StringEquals": {
          "s3:delimiter": [
            "/"
          ],
          "s3:prefix": [
            "",
            "wp-content/",
            "wp-content/plugins/",
            "wp-content/themes/",
            "wp-content/uploads/"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::www.nire.com",
        "arn:aws:s3:::kurashibit.nire.com"
      ],
      "Sid": "AllowRootAndContentListing"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::www.nire.com/wp-content/plugins/*",
        "arn:aws:s3:::www.nire.com/wp-content/themes/*",
        "arn:aws:s3:::www.nire.com/wp-content/uploads/*",
        "arn:aws:s3:::kurashibit.nire.com/wp-content/uploads/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--NirecomS3SeeBucketList" {
  description = "Mimimal Permissions for S3 client."
  name        = "NirecomS3SeeBucketList"
  path        = "/"

  policy = <<POLICY
{\r
    \"Version\": \"2012-10-17\",\r
    \"Statement\": [\r
        {\r
            \"Sid\": \"AllowUserToSeeBucketListInTheConsole\",\r
            \"Action\": [\"s3:ListAllMyBuckets\", \"s3:GetBucketLocation\"],\r
            \"Effect\": \"Allow\",\r
            \"Resource\": [\"arn:aws:s3:::*\"]\r
        }\r
    ]\r
}
POLICY
}
