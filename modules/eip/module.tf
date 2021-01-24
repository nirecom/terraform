variable "instance_id" {}
variable "association_id" {}

resource "aws_eip_association" "this" {
  instance = instance_id
  association_id = association_id
}
