variable "region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
  default     = "my-ecs-cluster"
} 