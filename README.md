# ☁️ Containerized Web Application with Docker & Kubernetes

## 📌 Project Overview
This project demonstrates end-to-end containerization and orchestration of a web application using **Docker** and **Kubernetes (K8s)**. Built as part of my Cloud Engineering portfolio, it showcases image creation, registry management, declarative Kubernetes deployments, self-healing architecture, horizontal scaling, and zero-downtime rolling updates.

---

## 🏗️ Architecture & Technologies Used
* **Application:** Custom HTML5/CSS3 Web Interface
* **Web Server:** Nginx (`nginx:alpine`)
* **Containerization:** Docker & Docker Hub Registry
* **Orchestration:** Kubernetes (Deployment & NodePort Service)

### Architecture Flow
`User Browser (Port 30001)` ➔ `Kubernetes NodePort Service (Load Balancer)` ➔ `Kubernetes Deployment (2-5 Replicas / Pods)` ➔ `Docker Container (Nginx Port 80)`

---

## 🚀 Key Cloud Engineering Concepts Demonstrated
1. **Containerization (`Dockerfile`):** Packaged a static web application into a lightweight `nginx:alpine` container image.
2. **Container Registry Management:** Tagged and pushed versioned images (`v1`, `v2`) to Docker Hub.
3. **Declarative Orchestration (`deployment.yaml`):** Defined desired cluster state using Kubernetes Manifests (Deployments and Services).
4. **Self-Healing Verification:** Simulated pod failures using `kubectl delete pod` and verified automatic pod rescheduling by the ReplicaSet controller.
5. **Horizontal Scaling:** Scaled application replicas dynamically to handle simulated traffic loads.
6. **Zero-Downtime Rolling Updates & Rollbacks:** Upgraded the cluster from `v1` to `v2` seamlessly and tested instant rollbacks via `kubectl rollout undo`.

---

## 🛠️ How to Run Locally

### 1. Build & Run with Docker
```bash
docker build -t my-web-app:v1 .
docker run -d -p 8080:80 --name my-running-app my-web-app:v1
