resource "aws_iam_instance_profile" "tfer--AmazonEC2RoleforSSM" {
  name = "AmazonEC2RoleforSSM"
  path = "/"
  role = "AmazonEC2RoleforSSM"
}

resource "aws_iam_instance_profile" "tfer--AmazonEC2S3NirecomBucket" {
  name = "AmazonEC2S3NirecomBucket"
  path = "/"
  role = "AmazonEC2S3NirecomBucket"
}

resource "aws_iam_instance_profile" "tfer--ecsInstanceRole" {
  name = "ecsInstanceRole"
  path = "/"
  role = "ecsInstanceRole"
}
