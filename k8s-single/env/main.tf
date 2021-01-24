provider "aws" {
  region = "ap-northeast-1"
}

module "module_ec2_master" {
  source = "../modules/"

  instance_type = "t3.micro"
  availability_zone = "ap-northeast-1a"
  subnet_id = "subnet-0b03e0e88fb61e406"
  tags_name = "k8s-master-ne1a"
  private_ip = "10.16.82.10"
}
module "module_ec2_worker" {
  source = "../modules/"

  availability_zone = "ap-northeast-1c"
  instance_type = "t3.small"
  subnet_id = "subnet-07c65d25ce8dbaacf"
  tags_name = "k8s-worker-ne1c"
  private_ip = "10.16.84.10"
}
