# Security Policy

## Supported Versions

| Version | Supported |
|----------|-----------|
| Latest | ✅ |

---

## Reporting a Vulnerability

If you discover a security vulnerability, please do not create a public GitHub issue.

Instead:

- Open a private GitHub Security Advisory (if enabled)
- Contact the repository owner directly

---

## Security Controls

This project integrates multiple DevSecOps security tools:

- Trivy
- Checkov
- Bandit
- Terraform Validation
- GitHub Actions CI/CD

---

## Security Best Practices

Secrets are never committed to source control.

Terraform state files are ignored.

AWS credentials are stored in GitHub Secrets.

Docker images are scanned before deployment.

Infrastructure is validated before provisioning.
