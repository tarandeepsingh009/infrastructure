region = "ap-south-1"

alb_name = "management-internal-alb"

enable_deletion_protection = false

logs_bucket = "learningmate-alb-logs"

enable_logging = false

alb_certificate_arn = ""

tags = {
  env   = "management"
  owner = "devops"
  type  = "internal-alb"
}