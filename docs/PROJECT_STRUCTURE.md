# Project Structure

```
enterprise-cicd-devsecops-pipeline/

├── app/
│   ├── app.py
│   ├── config.py
│   └── routes.py
│
├── tests/
│
├── docker/
│   ├── Dockerfile
│   └── .dockerignore
│
├── terraform/
│   ├── provider.tf
│   ├── versions.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── ecr.tf
│   ├── ec2.tf
│   ├── security.tf
│   ├── iam.tf
│   └── user_data.sh
│
├── diagrams/
│
├── security/
│
├── docs/
│
├── requirements.txt
│
├── README.md
│
└── pytest.ini
```

---

## Technology Stack

- Python
- Flask
- Docker
- GitHub Actions
- Terraform
- AWS EC2
- Amazon ECR
- Git
