provider "aws" {
  region = "ap-northeast-1"
}

module "module_ec2_lab" {
  source = "../../modules/"

  ami = "ami-0834bee8eb6dae7f0"
  availability_zone = "ap-northeast-1a"
  instance_type = "t3.micro"
  private_ip = "10.16.50.50"
  subnet_id = "subnet-0b03e0e88fb61e406"
  tags_name = "lab"
  vpc_security_group_ids = "sg-0d2b31bcdda20aebe"
}
