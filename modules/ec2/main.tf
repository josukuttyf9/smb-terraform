resource "aws_instance" "private_instance" {
  ami           = var.ami_id
  instance_type = "t3.micro"
 # vpc_id = var.vpc_id
  subnet_id     = var.private_subnet_ids
  vpc_security_group_ids = [aws_security_group.private_sg.id]

  tags = {
    Name = "prod-instance"
  }
}
