# Deployment Guide

## Local Development

```bash
python -m venv .venv

.venv\Scripts\activate

pip install -r requirements.txt

python -m app.app
```

Application

```
http://localhost:5000
```

---

## Docker Build

```bash
docker build -t enterprise-cicd-app -f docker/Dockerfile .
```

---

## Run Container

```bash
docker run -p 5000:5000 enterprise-cicd-app
```

---

## CI Pipeline

Every push to the **main** branch automatically triggers:

- Checkout Source
- Install Dependencies
- Run Flake8
- Run Pytest
- Build Docker Image
- Terraform Validate
- Terraform Plan

---

## Future CD

GitHub Actions

↓

Push Docker Image to Amazon ECR

↓

Deploy to Amazon EC2
