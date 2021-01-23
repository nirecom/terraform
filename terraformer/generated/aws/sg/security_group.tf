resource "aws_security_group" "tfer--ActiveDirectorySecurityGroup-002D-v2_sg-002D-08c054fdf3d48d2a7" {
  description = "removed 10.82.0.0/16, added missing ports"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0", "10.16.0.0/16", "192.168.5.0/24"]
    from_port        = "-1"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "icmp"
    self             = "false"
    to_port          = "-1"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "1024"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "123"
    protocol    = "udp"
    self        = "false"
    to_port     = "123"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "135"
    protocol    = "tcp"
    self        = "false"
    to_port     = "135"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "137"
    protocol    = "udp"
    self        = "false"
    to_port     = "137"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "138"
    protocol    = "udp"
    self        = "false"
    to_port     = "138"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "139"
    protocol    = "tcp"
    self        = "false"
    to_port     = "139"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "3268"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3269"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "389"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "389"
    protocol    = "udp"
    self        = "false"
    to_port     = "389"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "445"
    protocol    = "tcp"
    self        = "false"
    to_port     = "445"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "445"
    protocol    = "udp"
    self        = "false"
    to_port     = "445"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "464"
    protocol    = "tcp"
    self        = "false"
    to_port     = "464"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "53"
    protocol    = "tcp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "53"
    protocol    = "udp"
    self        = "false"
    to_port     = "53"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "636"
    protocol    = "tcp"
    self        = "false"
    to_port     = "636"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "88"
    protocol    = "tcp"
    self        = "false"
    to_port     = "88"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "88"
    protocol    = "udp"
    self        = "false"
    to_port     = "88"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "9389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "9389"
  }

  ingress {
    cidr_blocks = ["192.168.5.0/24"]
    description = "RDP from Kokuryo"
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  ingress {
    description      = "ne-1a"
    from_port        = "0"
    ipv6_cidr_blocks = ["2406:da14:106:c582::/64"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    description      = "ne-1c"
    from_port        = "0"
    ipv6_cidr_blocks = ["2406:da14:106:c584::/64"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  name   = "ActiveDirectorySecurityGroup-v2"
  vpc_id = "vpc-0d95857c2d53f0e9f"
}

resource "aws_security_group" "tfer--DBSecurityGroup_sg-002D-08284b19bd704bd1a" {
  description = "Created by RDS management console"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    cidr_blocks = ["10.16.50.0/24"]
    description = "external-ne1a"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["10.16.52.0/24"]
    description = "external-ne1c"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["60.70.127.151/32"]
    description = "initial setting by Aurora"
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name = "DBSecurityGroup"

  tags = {
    Name = "rds"
  }

  vpc_id = "vpc-0d95857c2d53f0e9f"
}

resource "aws_security_group" "tfer--HAProxyExternalSG_sg-002D-0e590c5d927b2869a" {
  description = "HAProxy External for HTTP, HTTPS, and Kubernetes master"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "for test run / haproxy stats"
    from_port        = "18088"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "18088"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "for test run"
    from_port        = "10080"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "10080"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "for test run"
    from_port        = "10443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "10443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "haproxy stats"
    from_port   = "8088"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8088"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks      = ["10.16.0.0/16"]
    description      = "for test run / k8s-control-plane"
    from_port        = "26443"
    ipv6_cidr_blocks = ["2406:da14:106:c500::/56"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "26443"
  }

  ingress {
    cidr_blocks      = ["10.16.0.0/16"]
    description      = "k8s-control-plane"
    from_port        = "16443"
    ipv6_cidr_blocks = ["2406:da14:106:c500::/56"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "16443"
  }

  name = "HAProxyExternalSG"

  tags = {
    Name = "haproxy"
  }

  vpc_id = "vpc-0d95857c2d53f0e9f"
}

resource "aws_security_group" "tfer--K8sControlPlaneSG_sg-002D-095b074aaacd65d1c" {
  description = "Kubernetes Control Plane (Master) + HTTP + HTTPS"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16"]
    description = "k8s control plane"
    from_port   = "2379"
    protocol    = "tcp"
    self        = "false"
    to_port     = "2380"
  }

  ingress {
    cidr_blocks      = ["10.16.0.0/16"]
    description      = "k8s control plane"
    from_port        = "6443"
    ipv6_cidr_blocks = ["2406:da14:106:c500::/56"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "6443"
  }

  ingress {
    from_port        = "2379"
    ipv6_cidr_blocks = ["2406:da14:106:c500::/56"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "2380"
  }

  name = "K8sControlPlaneSG"

  tags = {
    Name = "k8s-master"
  }

  vpc_id = "vpc-0d95857c2d53f0e9f"
}

resource "aws_security_group" "tfer--K8sWorkerSG_sg-002D-0cfe43e590b69aee6" {
  description = "Kubernetes Worker Nodes + HTTP + HTTPS"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "30000"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "32767"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks      = ["10.16.0.0/16"]
    description      = "etcd"
    from_port        = "2379"
    ipv6_cidr_blocks = ["2406:da14:106:c500::/56"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "2379"
  }

  ingress {
    cidr_blocks      = ["10.16.0.0/16"]
    description      = "etcd"
    from_port        = "2380"
    ipv6_cidr_blocks = ["2406:da14:106:c500::/56"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "2380"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16"]
    from_port   = "10250"
    protocol    = "tcp"
    self        = "false"
    to_port     = "10250"
  }

  name = "K8sWorkerSG"

  tags = {
    Name = "k8s-worker"
  }

  vpc_id = "vpc-0d95857c2d53f0e9f"
}

resource "aws_security_group" "tfer--LabServerSecurityGroup-002D-v2_sg-002D-0d2b31bcdda20aebe" {
  description = "allows SSH only for lab servers"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "LabServerSecurityGroup-v2"

  tags = {
    Name = "lab"
  }

  vpc_id = "vpc-0d95857c2d53f0e9f"
}

resource "aws_security_group" "tfer--NATSecurityGroup_sg-002D-0c30a495f94406720" {
  description = "NAT"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "ntp"
    from_port        = "123"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "123"
  }

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "ntp"
    from_port        = "123"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "udp"
    self             = "false"
    to_port          = "123"
  }

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "53"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "53"
  }

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "53"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "udp"
    self             = "false"
    to_port          = "53"
  }

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  ingress {
    cidr_blocks      = ["10.16.80.0/20"]
    description      = "ntp"
    from_port        = "123"
    ipv6_cidr_blocks = ["2406:da14:106:c580::/60"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "123"
  }

  ingress {
    cidr_blocks      = ["10.16.80.0/20"]
    description      = "ntp"
    from_port        = "123"
    ipv6_cidr_blocks = ["2406:da14:106:c580::/60"]
    protocol         = "udp"
    self             = "false"
    to_port          = "123"
  }

  ingress {
    cidr_blocks = ["10.16.80.0/20"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks      = ["10.16.80.0/20"]
    from_port        = "443"
    ipv6_cidr_blocks = ["2406:da14:106:c580::/60"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["10.16.80.0/20"]
    from_port        = "53"
    ipv6_cidr_blocks = ["2406:da14:106:c580::/60"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "53"
  }

  ingress {
    cidr_blocks      = ["10.16.80.0/20"]
    from_port        = "53"
    ipv6_cidr_blocks = ["2406:da14:106:c580::/60"]
    protocol         = "udp"
    self             = "false"
    to_port          = "53"
  }

  ingress {
    cidr_blocks      = ["10.16.80.0/20"]
    from_port        = "80"
    ipv6_cidr_blocks = ["2406:da14:106:c580::/60"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    from_port        = "-1"
    ipv6_cidr_blocks = ["2406:da14:106:c580::/60"]
    protocol         = "icmpv6"
    self             = "false"
    to_port          = "-1"
  }

  name = "NATSecurityGroup"

  tags = {
    Name = "nat"
  }

  vpc_id = "vpc-0d95857c2d53f0e9f"
}

resource "aws_security_group" "tfer--WebExternalSecurityGroup-002D-v2_sg-002D-033adc83e532d5f2a" {
  description = "WebExternalSecurityGroup-v2"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "443"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "443"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  ingress {
    cidr_blocks = ["10.16.0.0/16", "192.168.5.0/24"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  name   = "WebExternalSecurityGroup-v2"
  vpc_id = "vpc-0d95857c2d53f0e9f"
}

resource "aws_security_group" "tfer--default_sg-002D-09a677967694e11b3" {
  description = "default VPC security group"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-0d95857c2d53f0e9f"
}

resource "aws_security_group" "tfer--launch-002D-wizard-002D-1_sg-002D-0f100065c1169654b" {
  description = "launch-wizard-1 created 2021-01-22T08:01:54.859+09:00"

  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "0"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "-1"
    self             = "false"
    to_port          = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "22"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "22"
  }

  name   = "launch-wizard-1"
  vpc_id = "vpc-0d95857c2d53f0e9f"
}
