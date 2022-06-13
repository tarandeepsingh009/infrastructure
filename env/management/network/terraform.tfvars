vpc_name             = "management-vpc"
igw_name             = "management-igw"
pub_rt_name          = "management-pub"
pub_subnet_name      = "management-pub-subnet"
nat_name             = "management-nat"
pvt_rt_ame           = "management-pvt"
pvt_subnet_name      = "management-pvt-subnet"
alb_name             = "management-public-alb"
cidr_block           = "10.10.0.0/16"
pvt_zone_name        = "management.orchid-international.com"
availability_zones   = ["a", "b"]
public_subnets_cidr  = ["10.10.0.0/23", "10.10.2.0/23"]
private_subnets_cidr = ["10.10.4.0/23", "10.10.6.0/23", "10.10.16.0/21", "10.10.24.0/21"]
logs_bucket          = "orchid-international-alb-logs"
logs_bucket_arn      = "arn:aws:s3:::orchid-international-vpc-logs"
public_web_sg_name   = "management-public-sg"
region               = "ap-south-1"
tags = {
  "owner" = "devops"
  "env"   = "management"
}

