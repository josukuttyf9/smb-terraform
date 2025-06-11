terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 4.0"
      configuration_aliases = [aws]
    }
  }
}

resource "aws_s3_bucket" "example" {
  bucket = var.domain_name

  tags = {
    Name        = "wingousolutions.com"
    Environment = "Prod"
  }
}

resource "aws_s3_bucket_policy" "b" {
  bucket = aws_s3_bucket.example.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "BUCKETPOLICY",
  "Statement": [
    {

      "Sid": "IPAllow",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${var.domain_name}/*"
      
    }
  ]
}
POLICY
}