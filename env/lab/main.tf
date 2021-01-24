provider "aws" {
  region = "ap-northeast-1"
}

module "module_ec2_lab" {
  source = "../../modules/"

  ami = "ami-07eebf72274f24cb4"
  availability_zone = "ap-northeast-1a"
  instance_type = "t3.micro"
  private_ip = "10.16.82.50"
  subnet_id = "subnet-006a5ecaa0eaa23ed"
  tags_name = "lab"
  vpc_security_group_ids = "sg-0d2b31bcdda20aebe"
}
