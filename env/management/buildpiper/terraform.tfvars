region              = "ap-south-1"
buildpiper_ami_id   = "ami-08ee6644906ff4d6c"
buildpiper_ec2_name = "management-buildpiper-server"
buildpiper_vm_tags = {
  env   = "management"
  owner = "devops"
  type  = "buildpiper"
}
buildpiper_vm_volume_size = "200"
buildpiper_instance_type  = "m5.2xlarge"
volume_type               = "gp3"
env                       = "management"
public_key                = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEMraE4osR6h9TBv5zVWS7ZLrF51I8baE24sHRJGWNmTJmSGc/6JqcYkpc11me/uxXKwskDF2XpkxLX9gBdVTKGtnDtOFYK42ugTW/JiSBrg0Fe7/MKZzFL8Sa8OZPjiDnTe3LGEqyOxSQCuBOF3mCvufYIWwPs2qZy2MpRl+WyJFV+Ezfj2BhU1pA2eSwDlRyivUDx9hiK4AH8EyPD8RPbkEjmxOyHnGLTrIA9G1pcqq+pdDK8c+RfC4uIAh+fWtpw/NHAnMEbZ+RX1oi2pdSZiVKVRJ6lfuLXQ9LOUtfNNMMbFaqwDEppp8gxe8Yk5juodrE3RQgzf6K+eN2LJOJwTjxulfPqB/jrvz1w9yOKqRS8DCMOjXO9QKKIfymNcNS5x1fJ/zoe+aLgXrBhfcsUCbGJVEbGkY0Pb6cLTEZrY2N72rkDPMav2so46UxlrrsONfnOvehRVtewzsR+5cVsAEY10+Fc3BfrohQ2RohimPYu7CTzuW3z43qhUkrvf0= opstree@opstree-Latitude-3420"
