variable "region" {
  type        = string
  description = "Region"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for subnets"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnets_cidr" {
  description = "CIDR list for public subnet"
  type        = list(string)
}

variable "private_subnets_cidr" {
  description = "CIDR list for private subnet"
  type        = list(string)
}

variable "pvt_zone_name" {
  description = "Name of private zone"
  type        = string

}

variable "logs_bucket" {
  description = "Name of bucket where we would be storing our logs"
  type        = string
}

variable "tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
}

variable "public_web_sg_name" {
  description = "public web security group name"
  type        = string
}

variable "alb_certificate_arn" {
  description = "Cretificate arn for alb"
  type        = string
  default     = null
}

variable "logs_bucket_arn" {
  description = "Name of bucket where we would be storing our logs"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC to be created"
  type        = string
}

variable "igw_name" {
  type        = string
  description = "Internet Gateway name"
}

variable "pub_rt_name" {
  type        = string
  description = "Public route table name"
}

variable "pub_subnet_name" {
  type        = string
  description = "public subnet name"
}

variable "nat_name" {
  type        = string
  description = "Name of Nat Gateway"
}

variable "pvt_rt_ame" {
  type        = string
  description = "Name of Pvt Rpoute table"
}

variable "pvt_subnet_name" {
  type        = string
  description = "Name of private subnets"
}

variable "alb_name" {
  type        = string
  description = "Name of ALB"
}
