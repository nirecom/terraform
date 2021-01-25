resource "aws_eip" "tfer--eipalloc-002D-00ff239ab6f92364b" {
  instance             = "i-0229c83476b12c266"
  network_border_group = "ap-northeast-1"
  network_interface    = "eni-07bfc9ccaa2d2b1a8"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "bastion (bs)"
  }

  vpc = "true"
}

resource "aws_eip" "tfer--eipalloc-002D-086ede40a4996d7aa" {
  instance             = "i-042ae937312eab44a"
  network_border_group = "ap-northeast-1"
  network_interface    = "eni-0e7c02ca90cd8bf90"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "lb"
  }

  vpc = "true"
}

resource "aws_eip" "tfer--eipalloc-002D-092f2ea5d6580fdad" {
  instance             = "i-0954b283ea6e888ae"
  network_border_group = "ap-northeast-1"
  network_interface    = "eni-097c83dc98cccc37b"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "origin"
  }

  vpc = "true"
}
