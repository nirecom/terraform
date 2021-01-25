provider "aws" {
  region = "ap-northeast-1"
}

module "module_ec2_master" {
  source = "../modules/"

  availability_zone = "ap-northeast-1a"
  instance_type = "t3.small"
  private_ip = "10.16.82.10"
  subnet_id = "subnet-0b03e0e88fb61e406"
  tags_name = "k8s-master-ne1a"
  vpc_security_group_ids = "sg-095b074aaacd65d1c"  
}
module "module_ec2_worker" {
  source = "../modules/"

  availability_zone = "ap-northeast-1c"
  instance_type = "t3.small"
  private_ip = "10.16.84.20"
  subnet_id = "subnet-07c65d25ce8dbaacf"
  tags_name = "k8s-worker-ne1c"
  vpc_security_group_ids = "sg-0cfe43e590b69aee6"
}
