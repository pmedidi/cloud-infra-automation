terraform {
  backend "s3" {
    bucket         = "cloudinfra-terraform-state-031150629678"
    key            = "cloudinfra/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-locks"
  }
} 