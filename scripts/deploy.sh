#!/bin/bash
set -e
echo "🟢 Starting deployment to Minikube..."
kubectl apply -f k8s/
echo "✅ Deployment applied."
