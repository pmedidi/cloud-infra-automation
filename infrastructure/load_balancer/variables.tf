variable "vpc_id" {
  description = "The ID of the VPC for the load balancer"
  type        = string
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the load balancer"
  type        = list(string)
} 