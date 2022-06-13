variable "region" {
  type        = string
  description = "Region"
}

variable "buildpiper_ami_id" {
  description = "Name of Launch configuration"
  type        = string
}

variable "buildpiper_ec2_name" {
  type        = string
  description = "buildpiper instance name"
}

variable "buildpiper_vm_tags" {
  description = "Additional tags"
  type        = map(string)
}

variable "buildpiper_vm_volume_size" {
  description = "volume size"
  type        = number
}

variable "buildpiper_instance_type" {
  description = "Name of Launch configuration"
  type        = string
}

variable "public_key" {
  type        = string
  description = "pem key for buildpiper instance"
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "volume_type" {
  description = "volume type"
  type        = string
}
