variable "profile" {
  description = "AWS CLI profile to use"
  type        = string
}


variable "aws_region" {
  default     = "eu-west-1"
  description = "AWS region"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default = "10.0.0.0/16"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
  default = "ami-0178175c071ffc9e8"
}

variable "my_ip" {
  description = "Your IP to allow SSH (e.g. x.x.x.x/32)"
  type        = string
  default = "10.0.0.5/32"
}

