# AWS Setup Guide

## Prerequisites

- AWS Account (Free Tier)
- AWS CLI installed
- Terraform installed
- Docker Desktop installed
- Git installed

---

## Configure AWS CLI

```bash
aws configure
```

Example:

```
AWS Access Key ID: ****************
AWS Secret Access Key: ****************
Default region: ap-southeast-1
Default output: json
```

---

## Initialize Terraform

```bash
cd terraform

terraform init

terraform validate

terraform plan

terraform apply
```

---

## Resources Created

- Amazon ECR Repository
- EC2 Instance
- Security Group
- IAM Role
- IAM Instance Profile

---

## Verify Infrastructure

```bash
terraform output
```

Example Output

```
ecr_url = xxxxxxxxx.dkr.ecr.ap-southeast-1.amazonaws.com/enterprise-cicd-app

ec2_public_ip = xx.xx.xx.xx
```
