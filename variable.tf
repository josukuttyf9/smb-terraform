variable "aws_profile" {
  description = "AWS CLI profile to use"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type= string
}

variable "domain_name" {
  description = "Enter the domain name for s3 bucket"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "my_ip" {
  description = "Enter Your IP address"
  type        = string
}