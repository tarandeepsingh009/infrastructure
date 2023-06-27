module "eks_security_group" {
  source                             = "OT-CLOUD-KIT/security-groups/aws"
  version                            = "1.0.0"
  enable_whitelist_ip                = false
  enable_source_security_group_entry = true
  name_sg                            = "management-eks-sg"
  vpc_id                             = data.terraform_remote_state.network.outputs.vpc_id
  ingress_rule = {
    rules = {
      rule_list = [
        {
          description  = "Rule for port 443"
          from_port    = 443
          to_port      = 443
          protocol     = "tcp"
          cidr         = ["0.0.0.0/0"]
          source_SG_ID = [data.terraform_remote_state.openvpn.outputs.openvpn_sg_id]
        }
      ]
    }
  }
}

resource "aws_key_pair" "eks-pem" {
  key_name   = "staging-eks-key"
  public_key = var.ssh_key
}

module "Learningmate_eks_cluster" {
  source              = "OT-CLOUD-KIT/eks/aws"
  cluster_name        = var.cluster_name
  eks_cluster_version = var.eks_cluster_version
  subnets             = [data.terraform_remote_state.network.outputs.pvt_subnet_ids[0][2], data.terraform_remote_state.network.outputs.pvt_subnet_ids[0][3]]
  tags                = local.common_tags
  kubeconfig_name     = var.kubeconfig_name
  config_output_path  = var.config_output_path
  eks_node_group_name = var.eks_node_group_name
  region              = var.region
  create_node_group   = true
  endpoint_private    = false
  endpoint_public     = true
  vpc_id              = data.terraform_remote_state.network.outputs.vpc_id
  slackUrl            = var.slackUrl
  node_groups = {
    "worker1" = {
      subnets            = [data.terraform_remote_state.network.outputs.pvt_subnet_ids[0][2], data.terraform_remote_state.network.outputs.pvt_subnet_ids[0][3]]
      ssh_key            = aws_key_pair.eks-pem.key_name
      security_group_ids = [module.eks_security_group.sg_id, data.terraform_remote_state.buildpiper.outputs.buildpiper_sg_id]
      instance_type      = var.instance_type
      desired_capacity   = var.desired_capacity
      disk_size          = var.disk_size
      max_capacity       = var.max_capacity
      min_capacity       = var.min_capacity
      capacity_type      = var.capacity_type_worker_1
      tags               = merge(local.common_tags, local.worker_group1_tags)
      labels             = { "node_group" : "worker1" }
    }
    "worker2" = {
      subnets            = [data.terraform_remote_state.network.outputs.pvt_subnet_ids[0][2], data.terraform_remote_state.network.outputs.pvt_subnet_ids[0][3]]
      ssh_key            = aws_key_pair.eks-pem.key_name
      security_group_ids = [module.eks_security_group.sg_id, data.terraform_remote_state.buildpiper.outputs.buildpiper_sg_id]
      instance_type      = var.instance_type
      desired_capacity   = var.desired_capacity
      disk_size          = var.disk_size
      max_capacity       = var.max_capacity
      min_capacity       = var.min_capacity
      capacity_type      = var.capacity_type_worker_2
      tags               = merge(local.common_tags, local.worker_group1_tags)
      labels             = { "node_group" : "worker2" }
    }
  }
}