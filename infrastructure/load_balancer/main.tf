resource "aws_lb" "main" {
  name               = "main-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [] # Add security group IDs
  subnets            = var.subnet_ids

  tags = {
    Name = "main-alb"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Hello, World"
      status_code  = "200"
    }
  }
}

output "load_balancer_arn" {
  value = aws_lb.main.arn
} 