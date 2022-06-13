terraform {
  backend "s3" {
    bucket = "orchid-international-tf-state"
    key    = "env/management/network.tfstate"
    region = "ap-south-1"
  }
}
