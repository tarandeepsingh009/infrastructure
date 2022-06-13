region = "ap-south-1"

ec2_name = "management-openvpn-server"
ami_id   = "ami-0851b76e8b1bce90b"

env = "management"

volume_type = "gp3"

instance_type = "t3.small"

volume_size = "8"

tags = {
  env   = "management"
  owner = "devops"
  type  = "openvpn"
}

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD0uaJEElZ+gktxS5BZLdvucxx+BDRe4D2cgoXWBmXQhbHeogA+WF0crIMyDTJyhgXk6Q1Jd433AOY/oBGZK2g+kkhPG6wwO8F1JgPnby4MfQ1wcRKgBJCN0LNbwcK3G4RkIWYd8dbHcLnQqfnFM1absj10j6QyCBZMYh3iEE8NWdO0k07v4dA71GKOWxDdYsi4s6gbJQ2ccVPL9NQX7wXmg8ri5P0XzS92rBEHQDJ2Dz8tgVAVH6vXvxfcWiinNnNXgUiqjleLc7/DttioA2Rd1QEgtVGhPdtMheSAKUOAFJkvJp2ZEUTe3ZWxUXAbfYgDIFGBCbjSfmeJ1LJTx/4g0qyXYHqhMHrlZbOOPpLNoyxEu4YW4taMYGP2/IP4cx6+yg3tgtS9xyMR3nEdtvfAo7AILzujCKsIqVw6cJZZNS60TvngPBbXUjwtaJfsvfxPFo/aYM4ScjoZiW5cQQKZHiOJLt0+nxUQ4RypF5IIp+J9xflbhIaG9jQwYoavHzc= opstree@opstree-Latitude-3420"