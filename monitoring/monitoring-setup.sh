#!/bin/bash

echo "🔧 Deploying Prometheus and Grafana..."

kubectl apply -f monitoring/prometheus-deployment.yaml
kubectl apply -f monitoring/grafana-deployment.yaml

echo "✅ Prometheus and Grafana deployed."

echo "🎯 To access Grafana, run: minikube service grafana"
echo "🎯 To access Prometheus, run: minikube service prometheus"
