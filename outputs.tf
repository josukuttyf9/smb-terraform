output "private_instance_id" {
  value = aws_instance.private_instance.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}

