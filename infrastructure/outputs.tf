output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "subnet_ids" {
  description = "The IDs of the subnets."
  value       = module.vpc.subnet_ids
}

output "ecs_cluster_id" {
  description = "The ID of the ECS cluster."
  value       = module.ecs.cluster_id
} 