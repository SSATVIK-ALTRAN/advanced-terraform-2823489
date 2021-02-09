# //////////////////////////////
# VARIABLES
# //////////////////////////////
variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {
  default = "us-east-2"
}

variable "aws_session_token" {
  description = "Temporary session token used to create instances"
}

variable "instance_count" {
  type = number
  default = 1
}

variable "instance_tags" {
    type = map
    default = {
      "environment" = "dev"
    }
}
# //////////////////////////////
# OUTPUT
# //////////////////////////////
output "instance-ip" {
  value = module.ec2_cluster.public_ip
}
