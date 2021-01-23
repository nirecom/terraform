resource "aws_iam_user_policy_attachment" "tfer--cloudfront-002D-invalidator_NirecomCloudFrontInvalidate" {
  policy_arn = "arn:aws:iam::313411955421:policy/NirecomCloudFrontInvalidate"
  user       = "cloudfront-invalidator"
}

resource "aws_iam_user_policy_attachment" "tfer--s3-002D-media-002D-uploader_NirecomS3SeeBucketList" {
  policy_arn = "arn:aws:iam::313411955421:policy/NirecomS3SeeBucketList"
  user       = "s3-media-uploader"
}

resource "aws_iam_user_policy_attachment" "tfer--s3_NirecomS3SeeBucketList" {
  policy_arn = "arn:aws:iam::313411955421:policy/NirecomS3SeeBucketList"
  user       = "s3"
}
