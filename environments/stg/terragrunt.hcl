include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules/ec2"
}

inputs = {
  environment   = "stg"
  instance_type = "t3.small"
  aws_region    = "us-west-2"
}