include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules/ec2"
}

inputs = {
  environment   = "prod"
  instance_type = "t3.medium"
  aws_region    = "us-west-2"
}