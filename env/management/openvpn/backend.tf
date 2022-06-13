data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "orchid-international-tf-state"
    key    = "env/management/network.tfstate"
    region = "ap-south-1"
  }
}

terraform {
  backend "s3" {
    bucket = "orchid-international-tf-state"
    key    = "env/management/openvpn.tfstate"
    region = "ap-south-1"
  }
}