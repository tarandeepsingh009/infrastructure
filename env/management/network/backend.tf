terraform {
  backend "s3" {
    bucket = "Learningmate-tf-state"
    key    = "env/management/network.tfstate"
    region = "ap-south-1"
  }
}
