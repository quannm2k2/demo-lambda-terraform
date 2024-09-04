variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-southeast-2"
}

provider "aws" {
  # shared_config_files = [ "C:/Users/Admin/.aws/config" ]
  # shared_credentials_files = [ "C:/Users/Admin/.aws/credentials" ]
  # profile = "010438467195_dev-quannm1096"
  region = var.aws_region
}
