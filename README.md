# Enterprise CI/CD DevSecOps Pipeline on AWS

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform)
![Docker](https://img.shields.io/badge/Docker-Container-2496ED?logo=docker)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=githubactions)
![Python](https://img.shields.io/badge/Python-3.x-3776AB?logo=python)
![Flask](https://img.shields.io/badge/Flask-Web_App-black?logo=flask)
![License](https://img.shields.io/badge/License-MIT-green)

---

## Project Overview

This project demonstrates an enterprise-grade CI/CD and DevSecOps pipeline using AWS, Terraform, Docker, GitHub Actions, and Python.

The infrastructure is provisioned using Infrastructure as Code (Terraform), containerized with Docker, automatically built and pushed to Amazon ECR, and deployed to an Amazon EC2 instance through an automated GitHub Actions workflow.

The project follows DevSecOps best practices including automated testing, infrastructure automation, source control, and deployment consistency.

---

# Architecture

> Architecture Diagram

![Architecture](architecture/architecture.png)

---

# AWS Services Used

| Service | Purpose |
|----------|----------|
| Amazon EC2 | Application Server |
| Amazon ECR | Docker Image Repository |
| IAM | Access Management |
| Security Groups | Firewall Rules |
| VPC | Networking |
| CloudWatch *(Future)* | Monitoring |

---

# Technology Stack

- AWS
- Terraform
- Docker
- GitHub Actions
- Python
- Flask
- Pytest
- Bash
- Linux

---

# Repository Structure

```text
enterprise-cicd-devsecops-pipeline
│
├── .github/
│   └── workflows/
│
├── app/
│
├── terraform/
│
├── tests/
│
├── architecture/
│
├── docs/
│
├── screenshots/
│
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── README.md
```

---

# CI/CD Pipeline

The deployment workflow performs the following steps:

1. Developer pushes code to GitHub
2. GitHub Actions starts automatically
3. Execute Python unit tests
4. Build Docker image
5. Authenticate to Amazon ECR
6. Push Docker image to ECR
7. Terraform provisions infrastructure
8. EC2 pulls latest Docker image
9. Deploy Flask application

---

# Features

- Infrastructure as Code (Terraform)
- Docker Containerization
- Automated CI/CD
- Amazon ECR Integration
- GitHub Actions Workflow
- Automated Testing
- Secure Variable Management
- AWS Infrastructure Automation

---

# Security Best Practices

This project follows several security best practices:

- Sensitive files are excluded using `.gitignore`
- Terraform state files are not committed
- Password files are ignored
- GitHub Secrets are used for credentials
- IAM follows least privilege principles
- Infrastructure is version controlled

---

# Screenshots

## GitHub Actions

![Pipeline](screenshots/github-actions/pipeline-success.png)

---

## Amazon EC2

![EC2](screenshots/aws/ec2-running.png)

---

## Amazon ECR

![ECR](screenshots/aws/ecr.png)

---

## Running Application

![Application](screenshots/application/homepage.png)

---

# Deployment

Detailed deployment instructions are available in

```
docs/deployment-guide.md
```

---

# Testing

Run unit tests

```bash
pytest
```

---

# Terraform

Initialize

```bash
terraform init
```

Validate

```bash
terraform validate
```

Plan

```bash
terraform plan
```

Deploy

```bash
terraform apply
```

Destroy

```bash
terraform destroy
```

---

# Cost Estimate

This project is designed to run within the AWS Free Tier whenever possible.

Estimated monthly cost:

| Service | Cost |
|----------|------|
| EC2 t2.micro / t3.micro | Free Tier |
| Amazon ECR | Free Tier |
| VPC | Free |
| Security Groups | Free |

See

```
docs/cost-estimation.md
```

---

# Future Improvements

- CloudFront
- Route53
- HTTPS using ACM
- AWS WAF
- Amazon ECS
- Amazon EKS
- SonarQube Integration
- Trivy Container Scanning
- CloudWatch Dashboard
- Prometheus & Grafana
- Blue/Green Deployment

---

# Lessons Learned

Throughout this project I gained hands-on experience with:

- Infrastructure as Code
- AWS Networking
- Docker Containerization
- GitHub Actions
- Amazon ECR
- EC2 Deployment
- DevSecOps Workflow
- CI/CD Automation

See

```
docs/lessons-learned.md
```

---

# Author

**Natthida Sirapongkulpoj**

Cloud Engineer | AWS Cloud 

GitHub Portfolio focused on Cloud Engineering, DevOps, Infrastructure as Code, and AWS Automation.

---
