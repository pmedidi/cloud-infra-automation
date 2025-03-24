resource "aws_ecs_cluster" "main" {
  name = var.cluster_name

  tags = {
    Name = "main-ecs-cluster"
  }
}

output "cluster_id" {
  value = aws_ecs_cluster.main.id
} 