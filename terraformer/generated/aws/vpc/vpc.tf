resource "aws_vpc" "tfer--vpc-002D-0d95857c2d53f0e9f" {
  assign_generated_ipv6_cidr_block = "true"
  cidr_block                       = "10.16.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "false"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"

  tags = {
    Name = "nirecom-vpc"
  }
}
