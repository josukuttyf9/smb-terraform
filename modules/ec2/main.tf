resource "aws_instance" "private_instance" {
  ami           = var.ami_id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.private[0].id
  vpc_security_group_ids = [aws_security_group.private_sg.id]

  tags = {
    Name = "prod-instance"
  }
}
