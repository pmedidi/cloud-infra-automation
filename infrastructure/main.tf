provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./vpc"
  vpc_cidr = var.vpc_cidr
}

module "ecs" {
  source = "./ecs"
  cluster_name = var.cluster_name
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.subnet_ids
}

module "iam" {
  source = "./iam"
}

module "load_balancer" {
  source = "./load_balancer"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.subnet_ids
} 