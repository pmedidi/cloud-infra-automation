# Cloud Infrastructure Automation Platform

This project is an MVP for a Cloud Infrastructure Automation Platform using AWS, Docker, Terraform, and GitHub Actions.

## Project Structure

```
/infrastructure
  ├── main.tf
  ├── variables.tf
  ├── outputs.tf
  ├── vpc/
  ├── ecs/
  ├── iam/
  └── load_balancer/

/services/sample-service
  ├── Dockerfile
  ├── app.js
  └── package.json

/ci-cd
  └── .github/workflows/deploy.yml
```

## Setup Instructions

1. **AWS Configuration**:
   - Ensure you have an AWS account and the necessary permissions to create resources.
   - Configure your AWS credentials in GitHub secrets: `AWS_ACCOUNT_ID`, `AWS_REGION`, `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`.

2. **Terraform**:
   - Navigate to the `/infrastructure` directory.
   - Run `terraform init` to initialize the Terraform configuration.
   - Run `terraform apply` to provision the infrastructure.

3. **Docker and ECR**:
   - Ensure Docker is installed and running on your local machine.
   - The GitHub Actions workflow will build and push the Docker image to Amazon ECR.

4. **GitHub Actions**:
   - Push changes to the `main` branch to trigger the CI/CD pipeline.
   - The workflow will build the Docker image, push it to ECR, and deploy the service to ECS.

5. **Accessing the Service**:
   - Once deployed, access the service via the load balancer's DNS name.

## Notes

- Ensure all necessary AWS resources and permissions are in place before running the pipeline.
- Modify the Terraform and Node.js configurations as needed for your specific use case. 