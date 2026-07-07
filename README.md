# Enterprise CI/CD DevSecOps Pipeline on AWS

> Enterprise-grade CI/CD and DevSecOps pipeline demonstrating Infrastructure as Code (Terraform), Docker containerization, GitHub Actions automation, security validation, and automated deployment on AWS.

![Architecture](screenshots/architecture-diagram.png)

---

## Project Overview

Modern cloud platforms require more than infrastructure provisioning—they require secure, automated, repeatable software delivery.

This project demonstrates how enterprise engineering teams can automate application deployment by integrating Infrastructure as Code (IaC), containerization, CI/CD, and DevSecOps into a single cloud-native delivery pipeline.

The solution provisions AWS infrastructure with Terraform, builds and scans Docker images, performs automated testing and security validation, publishes images to Amazon ECR, and deploys containerized applications to Amazon EC2 through GitHub Actions.

This repository emphasizes engineering best practices including automation, repeatability, security-by-design, and infrastructure consistency.

---

# Enterprise Architecture

![Enterprise Architecture](screenshots/architecture-diagram.png)

The deployment workflow follows an enterprise DevSecOps model:

```
Developer
      │
      ▼
GitHub Repository
      │
      ▼
GitHub Actions
      │
      ├── Code Quality (Flake8)
      ├── Unit Testing (Pytest)
      ├── Security Analysis
      │      ├── CodeQL
      │      ├── Bandit
      │      ├── Checkov
      │      └── Trivy
      │
      ▼
Docker Build
      │
      ▼
Amazon ECR
      │
      ▼
Terraform
      │
      ▼
AWS Infrastructure
      │
      ▼
Amazon EC2
      │
      ▼
Docker Container
      │
      ▼
Python Flask Application
```

---

# Key Features

- Enterprise CI/CD pipeline using GitHub Actions
- Infrastructure as Code (Terraform)
- Automated AWS infrastructure provisioning
- Docker containerization
- Amazon ECR image management
- Amazon EC2 deployment
- Automated unit testing with Pytest
- Code quality validation using Flake8
- Static Application Security Testing (Bandit)
- Infrastructure security scanning (Checkov)
- Container vulnerability scanning (Trivy)
- GitHub CodeQL security analysis
- Environment-specific deployment configuration
- Production-ready cloud deployment workflow

---

# Technology Stack

| Category | Technologies |
|-----------|--------------|
| Cloud Platform | AWS |
| Infrastructure | Terraform |
| CI/CD | GitHub Actions |
| Container | Docker |
| Registry | Amazon ECR |
| Compute | Amazon EC2 |
| Programming | Python |
| Framework | Flask |
| Testing | Pytest |
| Code Quality | Flake8 |
| Security | Bandit, Checkov, Trivy, CodeQL |
| Version Control | Git, GitHub |

---

# AWS Infrastructure

Terraform provisions the following AWS resources:

- Amazon EC2
- Amazon ECR
- IAM Role
- VPC
- Public Subnet
- Security Group

Infrastructure is fully version-controlled and reproducible through Infrastructure as Code.

---

# CI/CD Workflow

The deployment pipeline executes the following stages automatically.

## 1. Source Control

Developers push source code to GitHub.

## 2. Continuous Integration

GitHub Actions automatically:

- Install dependencies
- Execute unit tests
- Validate code quality
- Run security scans

## 3. Security Gates

Security validation includes:

| Tool | Purpose |
|------|----------|
| CodeQL | Source Code Analysis |
| Bandit | Python SAST |
| Checkov | Terraform IaC Scan |
| Trivy | Docker Image Vulnerability Scan |

Only validated builds continue through the deployment pipeline.

## 4. Container Build

Docker builds an immutable application image.

## 5. Image Registry

Docker image is pushed to Amazon ECR.

## 6. Infrastructure Provisioning

Terraform provisions AWS infrastructure automatically.

## 7. Deployment

Amazon EC2 pulls the container image from Amazon ECR and starts the application.

---

# Project Structure

```text
enterprise-cicd-devsecops-pipeline
│
├── .github/
│   └── workflows/
│       └── ci-cd.yml
│
├── app/
│
├── docker/
│
├── terraform/
│
├── tests/
│
├── security/
│
├── environments/
│
├── docs/
│
├── screenshots/
│   ├── architecture-diagram.png
│   ├── github-actions-success.png
│   ├── aws-ecr-repository.png
│   ├── aws-ec2-instance-running.png
│   ├── ec2-docker-ps.png
│   ├── flask-home-page.png
│   └── project-folder-structure.png
│
├── README.md
├── SECURITY.md
├── CHANGELOG.md
├── CONTRIBUTING.md
└── LICENSE
```

---

# Deployment Evidence

## GitHub Actions Pipeline

![GitHub Actions](screenshots/github-actions-success.png)

The pipeline successfully completed CI/CD validation and deployment.

---

## Amazon ECR Repository

![Amazon ECR](screenshots/aws-ecr-repository.png)

Docker images are securely stored in Amazon Elastic Container Registry.

---

## Amazon EC2 Instance

![EC2](screenshots/aws-ec2-instance-running.png)

Terraform provisions an EC2 instance to host the application.

---

## Running Docker Container

![Docker Container](screenshots/ec2-docker-ps.png)

Application container running successfully on Amazon EC2.

---

## Running Application

![Flask Application](screenshots/flask-home-page.png)

Python Flask application deployed and accessible through the EC2 public IP.

---

# Documentation

Additional project documentation is available in the `docs/` directory.

| Document | Description |
|-----------|-------------|
| AWS_SETUP.md | AWS account and environment setup |
| deployment-guide.md | Deployment instructions |
| TROUBLESHOOTING.md | Common troubleshooting scenarios |
| security.md | Security implementation |
| cost-estimation.md | Estimated AWS cost |
| lessons-learned.md | Project reflections and improvements |

---

# Security

This project follows DevSecOps principles.

Security controls include:

- Least Privilege IAM
- Infrastructure as Code validation
- Static Application Security Testing
- Container vulnerability scanning
- GitHub CodeQL analysis
- Immutable container deployment
- Automated security validation during CI/CD

Additional details are available in:

- SECURITY.md
- security/

---

# Future Enhancements

Potential future improvements include:

- Amazon ECS
- Amazon EKS
- Blue/Green Deployment
- Canary Deployment
- AWS Secrets Manager
- AWS Systems Manager
- Prometheus & Grafana
- OpenTelemetry
- Multi-Environment Promotion
- Automated Rollback Strategy

---

# Skills Demonstrated

- AWS Cloud Engineering
- Infrastructure as Code
- DevSecOps
- Continuous Integration
- Continuous Deployment
- Docker Containerization
- Terraform Automation
- Cloud Security
- Infrastructure Automation
- Production Deployment
- Technical Documentation
- CI/CD Pipeline Design

---

# Author

**Natthida Sirapongkulpoj**

AWS Certified Cloud Practitioner
AWS re/Start Graduate (400+ Hours training & 69 Hands-on Labs)

Cloud Engineer • Solutions Architect • DevSecOps • Infrastructure as Code • AI/LLM

- GitHub: https://github.com/NatthidaSirapongkulpoj

- LinkedIn: https://www.linkedin.com/in/natthidasirapongkulpoj/

---

## License

This project is licensed under the MIT License.
