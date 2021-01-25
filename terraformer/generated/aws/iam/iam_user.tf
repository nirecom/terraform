resource "aws_iam_user" "tfer--AIDAIQ4T5N5PIN7Z6VVMW" {
  force_destroy = "false"
  name          = "ses-smtp-user.20170326"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAJP4LIMDIETR6HZNUO" {
  force_destroy = "false"
  name          = "hideaki-nire"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAUR6GO5LO45C5GIBM3" {
  force_destroy = "false"
  name          = "docker-builder"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAUR6GO5LOSGILYBY3E" {
  force_destroy = "false"
  name          = "db-manager"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAUR6GO5LOSIFMO7FEK" {
  force_destroy = "false"
  name          = "s3"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAUR6GO5LOTSUCMTZQ4" {
  force_destroy = "false"
  name          = "s3-media-uploader"
  path          = "/"
}

resource "aws_iam_user" "tfer--AIDAUR6GO5LOYOGISSZHK" {
  force_destroy = "false"
  name          = "cloudfront-invalidator"
  path          = "/"

  tags = {
    Date = "20201207"
  }
}
