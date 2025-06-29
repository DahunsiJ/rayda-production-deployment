# Runbook

## Service Info
FastAPI microservice deployed via Kubernetes with CI/CD and monitoring.

## Start
- Use `kubectl apply -f k8s/` to deploy.
- CI/CD triggers on push to main via GitHub Actions.

## Rollback
Use the `rollback.sh` script or:

```bash
kubectl rollout undo deployment/fastapi-deployment
```

## Health Check
Check `/health` endpoint:
```bash
curl http://<external-ip>/health
```

