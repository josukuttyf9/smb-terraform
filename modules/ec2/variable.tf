variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
}

variable "my_ip" {
  description = "Your IP to allow SSH (e.g. x.x.x.x/32)"
  type        = string
 
}
resource "aws_security_group" "private_sg" {
  name        = "private-sg"
  description = "Allow SSH"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = string
}
