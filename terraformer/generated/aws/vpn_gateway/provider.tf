provider "aws" {}

terraform {
  required_providers {
    aws = {
      version = "~> 3.25.0"
    }
  }
}
