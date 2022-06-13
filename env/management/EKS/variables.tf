variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "cluster_name" {
  type    = string
  default = "orchid-staging-cluster"
}
variable "eks_cluster_version" {
  type    = string
  default = "1.21"
}

variable "capacity_type_worker_3" {
  type    = string
  default = "ON_DEMAND"
}

variable "kubeconfig_name" {
  type    = string
  default = "config"
}

variable "config_output_path" {
  type    = string
  default = "config"
}

variable "eks_node_group_name" {
  type    = string
  default = "orchid-staging-ng"
}

variable "create_node_group" {
  type    = bool
  default = true
}
variable "endpoint_private" {
  type    = bool
  default = false
}
variable "endpoint_public" {
  type    = bool
  default = true

}

variable "ssh_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCcsCTheIImAK9Tzi7Xj4l87pXo4i/fWBgEPVN13kvmzmBVsc3UiFl+KWJQx+GCTp+snoPOWS3uE4gMKIzRgxPcDPQALOKlZRu2GNauDiVEE58YwIWaidjngsTOq7kLgqmotAxOLkrT4cZVlvygpJLYMxYgtV6TXtsahTUeS7wfQOunb4PKwCY83O5RoA7fXt6tTHazdoDnbqKEQSmUcJ9P44od141eSCPkQQWtKdgLYFbeGsHk/WTdkS6oBAqIaisLpshiv76T+f3bPrJwUC2qXFvJ4aGt93n0e3cbJJbO1nM29vIMdIMC3Dsx2ijdwlYRSJ1GrMOYkSheK98SBrIwGhcoVhhSh3j/+GSecg0Sso/6oSb3nzZRNkSGJoXOMfFC7w3ilT1GDjcuAPIoOf7eXgx2t5f8fr2z48WdtNy9xNLMT8TXngzAWJol4N9kIkzfXbK2Ry9X2ht6KFqEM0aXeWADQevJ/Y3xamgDTon1biujlW0XTNLyit3FUfeijz0= opstree@opstree-Latitude-3420"
}
variable "security_group_ids" {
  type    = list(string)
  default = ["sg-0823e90e0b17a42a4"]
}
variable "instance_type" {
  type    = list(string)
  default = ["c5.2xlarge"]
}
variable "desired_capacity" {
  type        = number
  description = "Desired number of instance"
  default     = 2
}
variable "disk_size" {
  description = "Disk size of workers"
  type        = number
  default     = 30
}
variable "max_capacity" {
  type    = number
  default = 15
}
variable "min_capacity" {
  type    = number
  default = 2
}
variable "capacity_type_worker_1" {
  type    = string
  default = "SPOT"
}
variable "capacity_type_worker_2" {
  type    = string
  default = "SPOT"
}
variable "scale_min_size" {
  description = "Minimum count of workers"
  type        = number
  default     = 2
}

variable "scale_max_size" {
  description = "Maximum count of workers"
  type        = number
  default     = 5
}

variable "scale_desired_size" {
  description = "Desired count of workers"
  type        = number
  default     = 3
}
variable "slackUrl" {
  description = "Slack Web hook URL"
  type        = string
  default     = ""
}

variable "capacity_type_worker_6" {
  description = "capacity for worker 4"
  type        = string
  default     = "ON_DEMAND"
}

variable "instance_type_worker" {
  description = "instance type for worker 4"
  type        = list(string)
  default     = ["c5.2xlarge"]
}