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
resource "aws_security_group" "private_sg" {
  name        = "private-sg"
  description = "Allow SSH"
  vpc_id      = aws_vpc.main.id

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