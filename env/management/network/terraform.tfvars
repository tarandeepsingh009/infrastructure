vpc_name             = "Opstree-vpc"
igw_name             = "Opstree-igw"
pub_rt_name          = "Opstree-pub"
pub_subnet_name      = "Opstree-pub-subnet"
nat_name             = "Opstree-nat"
pvt_rt_ame           = "Opstree-pvt"
pvt_subnet_name      = "Opstree-pvt-subnet"
alb_name             = "Opstree-public-alb"
cidr_block           = "172.33.0.0/21"
pvt_zone_name        = "management.Learningmate.com"
availability_zones   = ["a", "b"]
public_subnets_cidr  = ["172.33.6.0/25", "172.33.6.128/25"]
private_subnets_cidr = ["172.33.7.0/25", "172.33.0.0/23", "172.33.2.0/23"]
logs_bucket          = "Learningmate-alb-logs"
logs_bucket_arn      = "arn:aws:s3:::Learningmate-vpc-logs"
public_web_sg_name   = "Opstree-public-sg"
region               = "ap-south-1"
tags = {
  "owner" = "devops"
  "env"   = "management"
}

