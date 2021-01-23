provider "aws" {
  region = "ap-northeast-1"
}
variable "ami" {
  default = "ami-023a7615a07affbe5"
}
variable "vpc_security_group_ids" {
  default = "sg-095b074aaacd65d1c"
}

variable "subnet_id" {
  default = "subnet-0b03e0e88fb61e406"
}
#variable "private_ip" {
#  default = ["10.16.82.10"]
#}
  
resource "aws_instance" "ubuntu-18" {
  ami = var.ami
  instance_type = "t3.small"
  tags = {
    Name = "k8s-master-template"
  }
  availability_zone = "ap-northeast-1a"
  subnet_id = var.subnet_id
#  private_ip = var.private_ip
  ipv6_address_count = 1
  vpc_security_group_ids = [
    var.vpc_security_group_ids
  ]
  credit_specification {
    cpu_credits = "standard"
  }
  user_data = <<EOF
sudo apt update
sudo apt upgrade -y
EOF
}
