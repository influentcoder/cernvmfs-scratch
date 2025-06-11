variable "aws_region" {
  type        = string
  description = "The AWS region where resources will be deployed"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC where resources will be deployed"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet for the EC2 instance"
}
