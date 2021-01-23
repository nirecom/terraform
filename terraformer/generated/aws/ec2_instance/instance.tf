resource "aws_instance" "tfer--i-002D-019b518fe1c8fd352_PROD-003A--0020-kusanagi5-002D-standby" {
  ami                         = "ami-01489267b6cce984c"
  associate_public_ip_address = "false"
  availability_zone           = "ap-northeast-1c"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t2.micro"
  ipv6_address_count = "1"
  ipv6_addresses     = ["2406:da14:106:c552:66e3:b328:f6c0:bfe"]
  key_name           = "hideakinire20160808"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.52.179"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"
    throughput            = "0"
    volume_size           = "30"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-028a09da078d4425b"

  tags = {
    Name = "PROD: kusanagi5-standby"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--WebExternalSecurityGroup-002D-v2_sg-002D-033adc83e532d5f2a_id}"]
}

resource "aws_instance" "tfer--i-002D-01a6e86b1a9fa99ef_ads-002D-aws2" {
  ami                         = "ami-06b2e1396e60a46be"
  associate_public_ip_address = "false"
  availability_zone           = "ap-northeast-1c"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "true"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data    = "false"
  hibernation          = "false"
  iam_instance_profile = "AmazonEC2RoleforSSM"
  instance_type        = "t2.small"
  ipv6_address_count   = "1"
  ipv6_addresses       = ["2406:da14:106:c584:8d5d:5532:b27:a8a7"]
  key_name             = "hideakinire20160808"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.84.5"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name = "ads-aws2"
    }

    throughput  = "0"
    volume_size = "30"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-07c65d25ce8dbaacf"

  tags = {
    Name = "ads-aws2"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ActiveDirectorySecurityGroup-002D-v2_sg-002D-08c054fdf3d48d2a7_id}"]
}

resource "aws_instance" "tfer--i-002D-0229c83476b12c266_PROD-003A--0020-bastion-0020-nat" {
  ami                         = "ami-054a0fed08435c030"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-1a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_termination = "true"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t3a.nano"
  ipv6_address_count = "1"
  ipv6_addresses     = ["2406:da14:106:c550:b0c7:3180:9898:d230"]
  key_name           = "hideakinire20160808"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.50.254"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "0"
    throughput            = "0"
    volume_size           = "8"
    volume_type           = "standard"
  }

  source_dest_check = "false"
  subnet_id         = "subnet-006a5ecaa0eaa23ed"

  tags = {
    Name = "PROD: bastion nat"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--NATSecurityGroup_sg-002D-0c30a495f94406720_id}"]
}

resource "aws_instance" "tfer--i-002D-02cbb6b3ec8d7563c_ads-002D-aws" {
  ami                         = "ami-067b77655cf54fb16"
  associate_public_ip_address = "false"
  availability_zone           = "ap-northeast-1a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "true"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t2.small"
  ipv6_address_count = "1"
  ipv6_addresses     = ["2406:da14:106:c582:815a:8bef:e2cc:1f2b"]
  key_name           = "hideakinire20160808"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.82.5"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"

    tags = {
      Name = "ads-aws"
    }

    throughput  = "0"
    volume_size = "30"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0b03e0e88fb61e406"

  tags = {
    Name = "ads-aws"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--ActiveDirectorySecurityGroup-002D-v2_sg-002D-08c054fdf3d48d2a7_id}"]
}

resource "aws_instance" "tfer--i-002D-042ae937312eab44a_PROD-003A--0020-lb" {
  ami                         = "ami-0f2dd5fc989207c82"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-1a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "2"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "true"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t3a.micro"
  ipv6_address_count = "1"
  ipv6_addresses     = ["2406:da14:106:c550:78a:828:5a2d:4ba5"]
  key_name           = "hideakinire20160808"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.50.253"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"
    throughput            = "0"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-006a5ecaa0eaa23ed"

  tags = {
    Name = "PROD: lb"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--HAProxyExternalSG_sg-002D-0e590c5d927b2869a_id}"]
}

resource "aws_instance" "tfer--i-002D-043b8b3e0d18fbaf1_k8s-002D-master-002D-template" {
  ami                         = "ami-023a7615a07affbe5"
  associate_public_ip_address = "false"
  availability_zone           = "ap-northeast-1a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "2"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t3.small"
  ipv6_address_count = "1"
  ipv6_addresses     = ["2406:da14:106:c582:7bb1:2d40:131e:b1ca"]

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.82.47"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"
    throughput            = "0"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0b03e0e88fb61e406"

  tags = {
    Name = "k8s-master-template"
  }

  tenancy                = "default"
  user_data_base64       = "c3VkbyBhcHQgdXBkYXRlCnN1ZG8gYXB0IHVwZ3JhZGUgLXkK"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--K8sControlPlaneSG_sg-002D-095b074aaacd65d1c_id}"]
}

resource "aws_instance" "tfer--i-002D-0657382024be24f52_test-002D-1a-002D-internal" {
  ami                         = "ami-0f2dd5fc989207c82"
  associate_public_ip_address = "false"
  availability_zone           = "ap-northeast-1a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "2"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t3a.nano"
  ipv6_address_count = "0"
  key_name           = "hideakinire20160808"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.82.12"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"
    throughput            = "0"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0b03e0e88fb61e406"

  tags = {
    Name = "test-1a-internal"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--LabServerSecurityGroup-002D-v2_sg-002D-0d2b31bcdda20aebe_id}"]
}

resource "aws_instance" "tfer--i-002D-087e4a0e20a60b5c0_test-002D-1c-002D-internal" {
  ami                         = "ami-0f2dd5fc989207c82"
  associate_public_ip_address = "false"
  availability_zone           = "ap-northeast-1c"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "2"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t3.nano"
  ipv6_address_count = "1"
  ipv6_addresses     = ["2406:da14:106:c584:aa14:8cd0:b5e3:ae28"]
  key_name           = "hideakinire20160808"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.84.127"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"
    throughput            = "0"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-07c65d25ce8dbaacf"

  tags = {
    Name = "test-1c-internal"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--LabServerSecurityGroup-002D-v2_sg-002D-0d2b31bcdda20aebe_id}"]
}

resource "aws_instance" "tfer--i-002D-0954b283ea6e888ae_PROD-003A--0020-kusanagi5" {
  ami                         = "ami-01489267b6cce984c"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-1a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "true"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t2.micro"
  ipv6_address_count = "1"
  ipv6_addresses     = ["2406:da14:106:c550:3ba1:9da9:41d1:6f9"]
  key_name           = "hideakinire20160808"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.50.250"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"
    throughput            = "0"
    volume_size           = "30"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-006a5ecaa0eaa23ed"

  tags = {
    Name = "PROD: kusanagi5"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--WebExternalSecurityGroup-002D-v2_sg-002D-033adc83e532d5f2a_id}"]
}

resource "aws_instance" "tfer--i-002D-0b1e04d9fd6a17c03_lab-002D-ubuntu2" {
  ami                         = "ami-057913139af0d749d"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-1a"
  cpu_core_count              = "1"
  cpu_threads_per_core        = "2"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "true"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data  = "false"
  hibernation        = "false"
  instance_type      = "t3a.micro"
  ipv6_address_count = "1"
  ipv6_addresses     = ["2406:da14:106:c550:ccf1:797f:3a4b:ed12"]
  key_name           = "hideakinire20160808"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "10.16.50.246"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"
    throughput            = "0"
    volume_size           = "16"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-006a5ecaa0eaa23ed"

  tags = {
    Name = "lab-ubuntu2"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--LabServerSecurityGroup-002D-v2_sg-002D-0d2b31bcdda20aebe_id}"]
}
