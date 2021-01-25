resource "aws_internet_gateway" "tfer--igw-002D-0ad7ae902ce3ca909" {
  tags = {
    Name = "nirecom-gw"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0d95857c2d53f0e9f_id}"
}
