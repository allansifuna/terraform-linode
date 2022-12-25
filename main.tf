terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.29.4"
    }
  }
}

# Configure the Linode Provider
provider "linode" {
  token = var.token
}

# Create a Linode
resource "linode_instance" "terraform_linode" {
  label = "terraform_linode"
  image = "linode/ubuntu18.04"
  region = "us-central"
  type = "g6-standard-1"
  root_pass = var.root_pass
}
variable "token" {}
variable "root_pass" {}