data "terraform_remote_state" "vpn_gateway" {
  backend = "local"

  config = {
    path = "../../../generated/aws/vpn_gateway/terraform.tfstate"
  }
}
