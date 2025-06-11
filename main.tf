provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}
module "s3" {
  source = "./modules/s3"
  domain_name = var.domain_name

}
module "vpc" {
  source  = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
}

