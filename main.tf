
module "s3" {
  source = "./modules/s3"
  domain_name = var.domain_name

}
module "vpc" {
  source  = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
}
module "ec2" {
  source = "./modules/ec2"

  vpc_id              = module.vpc.vpc_id
  private_subnet_ids  = module.vpc.private_subnet_ids[0]
  my_ip               = var.my_ip
}
module "ALB" {
  source            = "./modules/ALB"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  private_instance_id = module.ec2.private_instance_id

}
