resource "aws_key_pair" "buildpiper-pem" {
  key_name   = format("%s", "${var.env}-buildpiper-key")
  public_key = var.public_key
}

module "buildpiper_instance" {
  source          = "OT-CLOUD-KIT/ec2-instance/aws"
  version         = "0.0.3"
  ec2_name        = var.buildpiper_ec2_name
  tags            = var.buildpiper_vm_tags
  instance_type   = var.buildpiper_instance_type
  key_name        = aws_key_pair.buildpiper-pem.key_name
  volume_size     = var.buildpiper_vm_volume_size
  subnet          = data.terraform_remote_state.network.outputs.pvt_subnet_ids[0][0]
  security_groups = [module.buildpiper_security_group.sg_id, module.internal_ssh_security_group.sg_id]
  ami_id          = var.buildpiper_ami_id
  volume_type     = var.volume_type
  public_ip       = false
}

module "buildpiper_security_group" {
  source                             = "OT-CLOUD-KIT/security-groups/aws"
  version                            = "1.0.0"
  enable_whitelist_ip                = false
  enable_source_security_group_entry = true
  name_sg                            = format("%s", "${var.env}-buildpiper-sg")
  vpc_id                             = data.terraform_remote_state.network.outputs.vpc_id
  ingress_rule = {
    rules = {
      rule_list = [
        {
          description  = "Rule for port 8080"
          from_port    = 8080
          to_port      = 8080
          protocol     = "tcp"
          cidr         = []
          source_SG_ID = [data.terraform_remote_state.internal_alb.outputs.internal_alb_sg_id]
        },
        {
          description  = "Rule for port 80"
          from_port    = 80
          to_port      = 80
          protocol     = "tcp"
          cidr         = []
          source_SG_ID = [data.terraform_remote_state.internal_alb.outputs.internal_alb_sg_id]
        },
        {
          description  = "Rule for port 9001"
          from_port    = 9001
          to_port      = 9001
          protocol     = "tcp"
          cidr         = []
          source_SG_ID = [data.terraform_remote_state.internal_alb.outputs.internal_alb_sg_id]
        }
      ]
    }
  }
}