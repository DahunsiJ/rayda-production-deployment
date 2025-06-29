# 🚀 Production-Ready FastAPI Deployment

Welcome to the **Production-Ready Service Deployment** project! This repository showcases a fully containerized, secure, scalable, and automated deployment pipeline for a simple FastAPI web service.

---

## 📦 Project Overview
This project takes a basic FastAPI app and makes it ready for production by implementing:

- ✅ Secure Multi-stage Docker builds
- ✅ Kubernetes deployment with resource limits, HPA, and health checks
- ✅ CI/CD pipeline with testing, security scans, and automated image builds
- ✅ Monitoring with Prometheus and Grafana
- ✅ Security enforcement via RBAC, Network Policies, and Secrets Management

---

## 🧩 Tech Stack
- **FastAPI**
- **Docker** (Multi-stage builds)
- **Kubernetes** (Minikube for local deployment)
- **Prometheus + Grafana** (Monitoring)
- **Trivy** (Security scanning)
- **GitHub Actions** (CI/CD)

---

## 📁 Project Structure
```
/production-deployment
├── main.py                      # FastAPI Application
├── Dockerfile                   # Multi-stage Docker build
├── requirements.txt             # Python dependencies
├── .github/workflows/deploy.yml# CI/CD Pipeline
├── k8s/                         # Kubernetes manifests
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│   ├── configmap.yaml
│   ├── secret.yaml
│   ├── networkpolicy.yaml
│   ├── hpa.yaml
│   └── serviceaccount.yaml
├── monitoring/                  # Monitoring setup
│   ├── prometheus.yml
│   ├── alerts.yml
│   └── grafana-dashboard.json
├── scripts/                     # Automation scripts
│   ├── deploy.sh
│   ├── health-check.sh
│   └── rollback.sh
├── security/                    # Security policies
│   ├── pod-security.yaml
│   └── rbac.yaml
├── terraform/                   # IaC (optional for cloud providers)
├── README.md                    # Documentation
└── RUNBOOK.md                   # Operational Guide
```

---

## ⚙️ Setup & Usage

### 1. 🚀 Start Minikube
```bash
minikube start
```

### 2. 🛠️ Deploy App Locally
```bash
./scripts/deploy.sh
```

### 3. ✅ Verify Health
```bash
./scripts/health-check.sh
```

### 4. 🔁 Rollback (if needed)
```bash
./scripts/rollback.sh
```

### 5. 📊 Access Monitoring Tools
```bash
minikube service prometheus-service
minikube service grafana-service
```

---

## 🔐 Security Highlights
- Trivy scans (filesystem + image)
- RBAC & service account control
- Kubernetes Secrets for sensitive data
- Network Policies to restrict inter-service traffic
- Pod Security Policies

---

## 📈 Monitoring & Alerting
- Prometheus scraping metrics from FastAPI
- Custom alerts configured in `alerts.yml`
- Grafana dashboard via `grafana-dashboard.json`

---

## 🤖 CI/CD Pipeline
| Stage                | Description                            |
|---------------------|----------------------------------------|
| Trivy FS Scan       | Static file vulnerability scan         |
| Tests + Coverage    | Unit + Integration tests               |
| Docker Build/Push   | Builds and pushes to DockerHub         |
| Trivy Image Scan    | Image-level vulnerability scan         |
| Deployment          | Instruction to deploy via Minikube     |

---

## 🙌 Author
**Justus Dahunsi**  
DevSecOps Engineer | SRE | Cloud Native Enthusiast  
✉️ dahunsijustus06@gmail.com

> _"Impossibilities are Possibilities waiting to be explored."_

---

## 📃 License
This project is for educational and demonstration purposes only.

---
