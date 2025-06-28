# Runbook for FastAPI Service

## Health Check
Run:
\`\`\`bash
bash scripts/health-check.sh
\`\`\`

## Rollback Deployment
Run:
\`\`\`bash
bash scripts/rollback.sh
\`\`\`

## Restart Pods
\`\`\`bash
kubectl rollout restart deployment fastapi-deployment
\`\`\`
