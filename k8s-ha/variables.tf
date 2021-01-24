variable "ami" {
  default = "ami-0936ee138b99a145c"
}
variable "vpc_security_group_ids" {
  default = "sg-095b074aaacd65d1c"
}

variable "region_postfix" {
  default = ["1a", "1c", "1d"]
}
variable "subnet_id" {
  default = ["subnet-0b03e0e88fb61e406", "subnet-07c65d25ce8dbaacf", "subnet-0a787f89954a2a193"]
}
variable "private_ip" {
  default = ["10.16.82.10", "10.16.84.10", "10.16.85.10"]
}
