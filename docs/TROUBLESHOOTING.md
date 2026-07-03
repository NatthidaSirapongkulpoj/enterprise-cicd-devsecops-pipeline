# Troubleshooting Guide

## Docker Cannot Connect

Problem

```
failed to connect to docker daemon
```

Solution

- Start Docker Desktop
- Wait until Docker Engine is running
- Verify

```bash
docker info
```

---

## Terraform Provider Error

Problem

```
Provider version mismatch
```

Solution

```bash
terraform init -upgrade
```

---

## Pytest Cannot Find Tests

Problem

```
No tests collected
```

Solution

Verify:

```
pytest.ini
```

contains

```ini
[pytest]
testpaths = tests
```

---

## ModuleNotFoundError

Problem

```
ModuleNotFoundError: app
```

Solution

Run application from the project root

```bash
python -m app.app
```

---

## GitHub Actions Failure

Check:

- requirements.txt
- pytest.ini
- Dockerfile path
- Terraform validation
- GitHub Secrets
