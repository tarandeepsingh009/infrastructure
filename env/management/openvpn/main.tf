resource "aws_key_pair" "openvpn-pem" {
  key_name   = format("%s-openvpn-key", "${var.env}")
  public_key = var.public_key
}

resource "aws_eip" "openvpn_instance_eip" {
  instance = module.openvpn_instance.instance_id[0]
  vpc      = true
  tags     = var.tags
}

module "openvpn_instance" {
  source          = "OT-CLOUD-KIT/ec2-instance/aws"
  version         = "0.0.3"
  ec2_name        = var.ec2_name
  tags            = var.tags
  instance_type   = var.instance_type
  key_name        = aws_key_pair.openvpn-pem.key_name
  volume_size     = var.volume_size
  subnet          = data.terraform_remote_state.network.outputs.public_subnet_ids[0][0]
  security_groups = [module.openvpn_security_group.sg_id]
  ami_id          = var.ami_id
  volume_type     = var.volume_type
  public_ip       = true
}

module "openvpn_security_group" {
  source              = "OT-CLOUD-KIT/security-groups/aws"
  version             = "1.0.0"
  enable_whitelist_ip = true
  name_sg             = format("%s-openvpn-sg", "${var.env}")
  vpc_id              = data.terraform_remote_state.network.outputs.vpc_id
  ingress_rule = {
    rules = {
      rule_list = [
        {
          description  = "Rule for port 1194"
          from_port    = 1194
          to_port      = 1194
          protocol     = "udp"
          cidr         = ["0.0.0.0/0"]
          source_SG_ID = []
        },
        {
          description  = "Rule for port 22 allow from Rishabhs IP"
          from_port    = 22
          to_port      = 22
          protocol     = "tcp"
          cidr         = ["103.69.244.145/32"]
          source_SG_ID = []
        }
      ]
    }
  }
}