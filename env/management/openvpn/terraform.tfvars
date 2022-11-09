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

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDCdyTGbPrkbHYOWBQd9qOKGoh2DRM0crNURmnOy+sOPBKaj37gUScS1H21P+ICuFxVLyinzBLAWw3qP7W7NTGCd8FTP9ZQfRlFVv4CkrZ8adjnr742kyh453Z4BNG7XQjcgfh7TmEtX9qYblxUzhWF0F03G3rATyPOcOkOasdgfLq3jhEfyok4eCdoAaf656lo2smHvd8Th50OLZ7Hi+KkbI5EssqEuu2lz0qJiiy1S+C9zFEcg5X43ZLv0WcTytOq2G0bVFx8YxaA5TKZ+32brOhFhLJ1qwzcX9OaLSZ3PeizFhZq3kx0hN8/RiHLbO+QmYJCcSjHndOHoFGub5biyvAY+PzbitsFjGmo7zJEyK09RMsmO+rgtot/GJ4e4qx6L2VkKAHQ7DYDw0ZTA0JXJnYXna7e5QJsxXuHofNkZPnPIQJ0tinRodIIWIPCxH3JmvNuPmebPwhe6I3DyQ/IrOTnYd2LYt7jNIdciviGWXkbjKdpbE1/5/w4nvSQFDE= opstree@opstree-Latitude-3420"