variable "name" {}
variable "type" {}
variable "records" {}

resource "aws_route53_record" "this" {
  zone_id = data.aws_route53_zone.this.zone_id
  name = var.name
  type = var.type
  records = var.records
  ttl = 300
}

data "aws_route53_zone" "this" {
  name = "nire.com"
}
