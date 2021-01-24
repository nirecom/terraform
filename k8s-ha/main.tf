provider "aws" {
  region = "ap-northeast-1"
}
 
resource "aws_instance" "k8s-masters" {
  count = length( var.region_postfix )
#  count = 1
  ami = var.ami
  instance_type = "t3.small"
  tags = {
    Name = "k8s-master-ne${format("%s", element(var.region_postfix, count.index))}"
  }
  availability_zone = "ap-northeast-${format("%s", element(var.region_postfix, count.index))}"
  subnet_id = element(var.subnet_id, count.index)
  private_ip = element(var.private_ip, count.index)
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
