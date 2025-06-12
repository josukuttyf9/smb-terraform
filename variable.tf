variable "aws_profile" {
  description = "AWS CLI profile to use"
  type        = string
  default = "smbanna"
}

variable "aws_region" {
  description = "AWS region"
  type= string
  default = "me-central-1"
}

variable "domain_name" {
  description = "Enter the domain name for s3 bucket"
  type        = string
  default = "test5677848"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default = "10.3.0.0/16"
}
variable "my_ip" {
  description = "Enter Your IP address"
  type        = string
  default ="1.10.1.1/32"
}