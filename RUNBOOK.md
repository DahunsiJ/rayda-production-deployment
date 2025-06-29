# 🧰 Operations Runbook – FastAPI Production Service

This document serves as an operational guide for maintaining, monitoring, and troubleshooting the production-ready FastAPI service deployed via Kubernetes on Minikube.

---

## 🚀 Deployment Process

### ✅ Initial Deployment
Run the deployment script:
```bash
./scripts/deploy.sh
```

This applies all K8s manifests in the `k8s/` directory.

### 📦 Docker Image
Ensure the latest Docker image is built and pushed:
```bash
docker build -t dahunsij/fastapi-service:latest .
docker push dahunsij/fastapi-service:latest
```

### 🔁 Rollback Procedure
In case of failure, run the rollback script:
```bash
./scripts/rollback.sh
```

This will revert the deployment to the last successful version.

---

## 🔍 Health Check

### Manual Check
```bash
./scripts/health-check.sh
```

Or directly test the endpoint:
```bash
curl http://<NODE_IP>:<NODE_PORT>/health
```

### Kubernetes Probes
Defined in `k8s/deployment.yaml`:
- **Liveness Probe**
- **Readiness Probe**

---

## 🧪 Monitoring

### Prometheus
Deployed via `monitoring/prometheus-deployment.yaml`
- Access with:
```bash
minikube service prometheus-service
```

### Grafana
Deployed via `monitoring/grafana-deployment.yaml`
- Access with:
```bash
minikube service grafana-service
```

### Alerts
Alert rules defined in:
```yaml
monitoring/alerts.yml
```

---

## 🔐 Security Notes

- **Secrets**: Stored securely in `k8s/secret.yaml`
- **NetworkPolicy**: Configured in `k8s/networkpolicy.yaml`
- **RBAC**: Controlled using `security/rbac.yaml`
- **Pod Security**: Defined in `security/pod-security.yaml`

---

## 🛠️ Troubleshooting

### View Logs
```bash
kubectl logs -l app=fastapi-app
```

### Check Pod Status
```bash
kubectl get pods -o wide
```

### Describe a Pod
```bash
kubectl describe pod <pod-name>
```

### Redeploy Specific Manifest
```bash
kubectl apply -f k8s/<file>.yaml
```

---

## 📄 Recovery Strategy
If deployment is broken:
1. Run the rollback script:
   ```bash
   ./scripts/rollback.sh
   ```
2. Revert to a previous Docker image if needed
3. Inspect logs and Prometheus alerts
4. Apply updated manifests manually

---

## 📬 Contact
For support or questions, contact:
**Justus Dahunsi**  
✉️ justusdahunsi6@gmail.com

> _Stay reliable. Stay secure. Stay automated._

---

## ✅ Final Pre-Submission Checklist
- [x] All workflows passing ✅
- [x] Tests and coverage validated ✅
- [x] Docker image pushed ✅
- [x] Monitoring accessible ✅
- [x] Documentation complete ✅
