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

module "aws_eip_association" {
  source = "../../modules/eip_association"
  allocation_id = "eipalloc-08a0ed9328f0dd299"
  instance_id = module.ec2_lab.id
}
