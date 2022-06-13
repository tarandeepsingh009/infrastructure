module "internal_alb_security_group" {
  source  = "OT-CLOUD-KIT/security-groups/aws"
  version = "1.0.0"
  name_sg = "management-internal-alb-sg"
  vpc_id  = data.terraform_remote_state.network.outputs.vpc_id
  ingress_rule = {
    rules = {
      rule_list = [
        {
          description  = "Rule for port 80"
          from_port    = 80
          to_port      = 80
          protocol     = "tcp"
          cidr         = ["10.10.0.93/32"]
          source_SG_ID = [data.terraform_remote_state.openvpn.outputs.openvpn_sg_id]
        },
        {
          description  = "Rule for port 443"
          from_port    = 443
          to_port      = 443
          protocol     = "tcp"
          cidr         = ["10.10.0.93/32"]
          source_SG_ID = [data.terraform_remote_state.openvpn.outputs.openvpn_sg_id]
        }
      ]
    }
  }
}

module "internal_alb" {
  source                     = "OT-CLOUD-KIT/alb/aws"
  version                    = "0.0.4"
  alb_name                   = var.alb_name
  internal                   = true
  security_groups_id         = [module.internal_alb_security_group.sg_id]
  subnets_id                 = [data.terraform_remote_state.network.outputs.pvt_subnet_ids[0][0], data.terraform_remote_state.network.outputs.pvt_subnet_ids[0][1]]
  logs_bucket                = var.logs_bucket
  enable_logging             = var.enable_logging
  enable_deletion_protection = var.enable_deletion_protection
  tags                       = var.tags
  alb_certificate_arn        = var.alb_certificate_arn
}