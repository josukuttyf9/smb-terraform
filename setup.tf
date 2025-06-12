terraform {

  backend "s3" {
    bucket         = "f9smb-terraform-backend"  
    key            = "anna/terraform.tfstate"     
    region         = "me-central-1"
    profile = "smb-main"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "me-central-1"
  profile = var.aws_profile
}
