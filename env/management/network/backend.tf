terraform {
  backend "s3" {
    bucket = "pinelabs-tf-state"
    key    = "env/management/network.tfstate"
    region = "ap-south-1"
  }
}
