provider "aws" {}

module "ec2_lab" {
  source = "../../modules/ec2"
  ami = "ami-0834bee8eb6dae7f0"
  availability_zone = "ap-northeast-1c"
  instance_type = "t3.micro"
#  private_ip = "10.16.84.50"
  subnet_id = "subnet-07c65d25ce8dbaacf"
  tags_name = "lab"
  vpc_security_group_ids = "sg-0d2b31bcdda20aebe"
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
