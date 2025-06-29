#!/bin/bash
echo "🔍 Performing health check..."
NODE_PORT=$(kubectl get --namespace default -o jsonpath="{.spec.ports[0].nodePort}" services fastapi-service)
NODE_IP=$(minikube ip)
curl http://$NODE_IP:$NODE_PORT/health
