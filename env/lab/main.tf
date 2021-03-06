provider "aws" {}

module "ec2_lab" {
  source = "../../modules/ec2"
  ami = "ami-0834bee8eb6dae7f0"
  availability_zone = "ap-northeast-1c"
  instance_type = "t3.small"
#  private_ip = ""
  subnet_id = data.aws_subnet.selected.id
  tags_name = "lab"
  vpc_security_group_ids = data.aws_security_group.selected.id
}

module "eip_association_lab" {
  source = "../../modules/eip_association"
  instance_id = module.ec2_lab.id
  allocation_id = module.eip_lab.id
}

module "eip_lab" {
  source = "../../modules/eip"
  tags_name = "lab"
}

module "route53_lab" {
  source = "../../modules/route53"
  name = "lab"
  type = "A"
  records = [ module.eip_lab.public_ip ]
}  

data "aws_subnet" "selected" {
  filter {
    name = "tag:Name"
    values = ["external-ne1c"]
  }
}

data "aws_security_group" "selected" {
  filter {
    name = "tag:Name"
    values = ["lab"]
  }
}

