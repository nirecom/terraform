resource "aws_vpn_gateway" "tfer--vgw-002D-03eecc1f10d827e28" {
  amazon_side_asn = "64512"

  tags = {
    Name = "nirecom-vgw"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-002D-0d95857c2d53f0e9f_id}"
}
