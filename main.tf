provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = var.vpc_cidr
  private_subnet_cidrs = var.private_subnet_cidrs
  vpc_name             = var.vpc_name
}

#module "ec2" {
#  source        = "./modules/ec2"
#  subnet_id     = module.vpc.private_subnet_ids[0]
#  ami_id        = var.ami_id
#  ec2_name      = var.ec2_name
#  instance_type = var.instance_type
#}
