variable "availability_zone" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "tags_name" {}
variable "private_ip" {}
variable "vpc_security_group_ids" {}

resource "aws_instance" "this" {
  ami = var.ami
  tags = {
    Name = var.tags_name
  }
  availability_zone = var.availability_zone
  instance_type = var.instance_type
  ipv6_address_count = 1
  private_ip = var.private_ip
  subnet_id = var.subnet_id
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
