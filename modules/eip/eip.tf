variable "tags_name" {}

output "id" {
  value = aws_eip.this.id
}
output "public_ip" {
  value = aws_eip.this.public_ip
}
  
resource "aws_eip" "this" {
  vpc		= true
  tags = {
    Name = var.tags_name
  }
}
