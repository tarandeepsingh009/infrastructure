variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "cluster_name" {
  type    = string
  default = "pinelabs-cluster"
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
  default = "pinelabs-ng"
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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDCdyTGbPrkbHYOWBQd9qOKGoh2DRM0crNURmnOy+sOPBKaj37gUScS1H21P+ICuFxVLyinzBLAWw3qP7W7NTGCd8FTP9ZQfRlFVv4CkrZ8adjnr742kyh453Z4BNG7XQjcgfh7TmEtX9qYblxUzhWF0F03G3rATyPOcOkOasdgfLq3jhEfyok4eCdoAaf656lo2smHvd8Th50OLZ7Hi+KkbI5EssqEuu2lz0qJiiy1S+C9zFEcg5X43ZLv0WcTytOq2G0bVFx8YxaA5TKZ+32brOhFhLJ1qwzcX9OaLSZ3PeizFhZq3kx0hN8/RiHLbO+QmYJCcSjHndOHoFGub5biyvAY+PzbitsFjGmo7zJEyK09RMsmO+rgtot/GJ4e4qx6L2VkKAHQ7DYDw0ZTA0JXJnYXna7e5QJsxXuHofNkZPnPIQJ0tinRodIIWIPCxH3JmvNuPmebPwhe6I3DyQ/IrOTnYd2LYt7jNIdciviGWXkbjKdpbE1/5/w4nvSQFDE= opstree@opstree-Latitude-3420"
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