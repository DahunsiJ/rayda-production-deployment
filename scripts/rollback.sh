#!/bin/bash
echo "↩️ Rolling back last deployment..."
kubectl rollout undo deployment/fastapi-deployment
echo "✅ Rollback complete."
