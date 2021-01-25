variable "tags_name" {}

output "id" {
  value = aws_eip.this.id
}
  
resource "aws_eip" "this" {
  vpc		= true
  tags = {
    Name = var.tags_name
  }
}
