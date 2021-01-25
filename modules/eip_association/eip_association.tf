variable "instance_id" {}
variable "allocation_id" {}

resource "aws_eip_association" "this" {
  instance_id	= var.instance_id
  allocation_id	= var.allocation_id
}
