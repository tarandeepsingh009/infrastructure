module "internal_ssh_security_group" {
  source                             = "OT-CLOUD-KIT/security-groups/aws"
  version                            = "1.0.0"
  enable_whitelist_ip                = false
  enable_source_security_group_entry = true
  name_sg                            = format("%s", "${var.env}-internal_ssh-sg")
  vpc_id                             = data.terraform_remote_state.network.outputs.vpc_id
  ingress_rule = {
    rules = {
      rule_list = [
        {
          description  = "Rule for port 22"
          from_port    = 22
          to_port      = 22
          protocol     = "tcp"
          cidr         = []
          source_SG_ID = [data.terraform_remote_state.openvpn.outputs.openvpn_sg_id]
        }
      ]
    }
  }
}