data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "pinelabs-tf-state"
    key    = "env/management/network.tfstate"
    region = "ap-south-1"
  }
}

terraform {
  backend "s3" {
    bucket = "pinelabs-tf-state"
    key    = "env/management/internal_alb.tfstate"
    region = "ap-south-1"
  }
}

data "terraform_remote_state" "openvpn" {
  backend = "s3"
  config = {
    bucket = "pinelabs-tf-state"
    key    = "env/management/openvpn.tfstate"
    region = "ap-south-1"
  }
}

data "aws_instance" "openvpn" {
  instance_id = "i-0b9330fcbafc5a04a"
}