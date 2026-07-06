# 🚀 Enterprise CI/CD DevSecOps Pipeline on AWS

> Secure • Automated • Reproducible • Infrastructure as Code

An enterprise-grade DevSecOps pipeline built on **Amazon Web Services (AWS)** that automates infrastructure provisioning, application packaging, security validation, and deployment using modern Cloud Engineering practices.

This project demonstrates how Infrastructure as Code (Terraform), Docker, GitHub Actions, automated testing, and security scanning can be integrated into a repeatable Continuous Integration and Continuous Deployment (CI/CD) workflow.

---

![Architecture](screenshots/architecture-diagram.png)

---

## 📌 Project Highlights

✔ Infrastructure as Code using Terraform

✔ Automated CI/CD with GitHub Actions

✔ Dockerized Python Flask Application

✔ Amazon Elastic Container Registry (ECR)

✔ Amazon EC2 Deployment

✔ Security Scanning (Bandit • Checkov • Trivy)

✔ Automated Unit Testing

✔ Environment Configuration

✔ Enterprise-ready Repository Structure

✔ Modular Infrastructure Design

---

# Why This Project

Modern cloud platforms require much more than provisioning virtual machines.

Cloud Engineers are expected to build secure, automated, scalable deployment pipelines that integrate:

- Infrastructure Automation
- Continuous Integration
- Continuous Delivery
- Security Validation
- Containerization
- Cloud Networking
- Testing Automation

This project demonstrates an end-to-end DevSecOps workflow that follows industry best practices and emphasizes automation, repeatability, and maintainability.

---

# Solution Architecture

The deployment workflow follows the architecture below.

![Architecture Diagram](screenshots/architecture-diagram.png)

### Workflow

```text
Developer
      │
      ▼
GitHub Repository
      │
      ▼
GitHub Actions
      │
      ├── Code Validation
      ├── Unit Tests
      ├── Security Scans
      │      ├── Bandit
      │      ├── Checkov
      │      └── Trivy
      │
      ├── Docker Build
      ├── Push Image to Amazon ECR
      │
      ▼
Amazon EC2
      │
      ▼
Flask Web Application
```

---

# Technology Stack

| Category | Technologies |
|------------|--------------|
| Cloud Platform | AWS |
| Infrastructure as Code | Terraform |
| CI/CD | GitHub Actions |
| Container | Docker |
| Registry | Amazon ECR |
| Compute | Amazon EC2 |
| Programming | Python |
| Framework | Flask |
| Testing | Pytest |
| Security | Bandit, Checkov, Trivy |
| Version Control | Git & GitHub |

---

# Repository Structure

```
enterprise-cicd-devsecops-pipeline
│
├── .github/
│   └── workflows/
│
├── app/
│
├── docker/
│
├── docs/
│
├── environments/
│
├── screenshots/
│
├── security/
│
├── terraform/
│
├── tests/
│
├── README.md
├── requirements.txt
└── setup.cfg
```

---

# Infrastructure Components

Terraform provisions AWS resources including:

- Amazon EC2
- Amazon ECR
- IAM Roles
- Security Groups
- Networking
- Variables
- Outputs

Infrastructure is designed to be modular, reusable, and maintainable.

---

# CI/CD Pipeline

The GitHub Actions workflow performs the following stages automatically.

### Stage 1

Source Checkout

↓

### Stage 2

Install Python Dependencies

↓

### Stage 3

Static Code Validation

↓

### Stage 4

Run Unit Tests

↓

### Stage 5

Security Scanning

- Bandit
- Checkov
- Trivy

↓

### Stage 6

Docker Image Build

↓

### Stage 7

Push Image to Amazon ECR

↓

### Stage 8

Deploy Application to Amazon EC2

---

# Security Controls

Security is integrated throughout the deployment lifecycle.

Implemented controls include:

- Static Application Security Testing (SAST)
- Infrastructure Security Validation
- Docker Image Vulnerability Scanning
- Least Privilege IAM Principles
- Infrastructure as Code Validation
- Secret Exclusion using `.gitignore`

---

# Deployment Screenshots

## 📂 Project Structure

![Project Structure](screenshots/project-folder-structure.png)

---

## ⚙ GitHub Actions Pipeline

![GitHub Actions](screenshots/github-actions-success.png)

---

## 📦 Amazon ECR Repository

![Amazon ECR](screenshots/aws-ecr-repository.png)

---

## ☁ Amazon EC2 Instance

![Amazon EC2](screenshots/aws-ec2-instance-running.png)

---

## 🌐 Running Flask Application

![Flask Application](screenshots/flask-home-page.png)

---

# Project Documentation

Additional documentation is available in the `docs` directory.

- AWS Setup
- Deployment Guide
- Security Guide
- Cost Estimation
- Troubleshooting
- Lessons Learned

---

# Skills Demonstrated

This project demonstrates practical experience in:

- AWS Cloud Infrastructure
- Cloud Engineering
- Infrastructure as Code
- Terraform
- GitHub Actions
- Docker
- CI/CD
- DevSecOps
- Infrastructure Security
- Cloud Networking
- Python Automation
- Linux
- Version Control
- Infrastructure Validation
- Continuous Delivery

---

# Future Enhancements

Planned improvements include:

- Amazon ECS
- AWS Fargate
- Application Load Balancer
- Auto Scaling
- Route 53
- AWS Certificate Manager (HTTPS)
- CloudWatch Dashboard
- AWS WAF
- Blue/Green Deployment
- GitHub OIDC Authentication
- Terraform Remote Backend
- Terraform State Locking with DynamoDB

---

# Key Takeaways

This project strengthened practical experience in:

- Designing cloud infrastructure using Infrastructure as Code.
- Building secure and repeatable CI/CD pipelines.
- Applying DevSecOps principles throughout the software delivery lifecycle.
- Automating deployments using GitHub Actions.
- Managing AWS resources using Terraform.
- Integrating security validation into deployment workflows.
- Deploying containerized applications on AWS.

---

# Author

## Natthida Sirapongkulpoj

Cloud Engineer | AWS 

- GitHub: https://github.com/NatthidaSirapongkulpoj

---

⭐ If you found this project helpful, feel free to star the repository.