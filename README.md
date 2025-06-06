# 🚀 Cyderes Kubernetes Challenge Submission

Welcome! This repository contains my complete submission for the Cyderes Kubernetes Challenge, with direct links and proof for every requirement.

---

## ✅ 1. Kubernetes Cluster Resources (YAML)

> **Requirement:** Output all resources for the cluster in YAML format using `kubectl get all -A -o yaml` and gather additional resources as needed.

📄 **[View `kubernetes_cluster_resources.yaml`](./kubernetes_cluster_resources.yaml)**  
📄 **[Additional Resources](./extra-k8s-resources/)** — includes ConfigMaps, Secrets, CRDs, etc.

---

## ✅ 2. Kubernetes Components in a Running/Operating State

> **Requirement:** Provide screenshots of Kubernetes components in a running or operating state (cloud or local).

🖼️ **[View Kubernetes Component Screenshots](./screenshots/k8s-components/)**  
Includes screenshots of:
- Nodes
- Pods
- Deployments
- Services
---

## ✅ 3. Proof of Web Server Exposure

> **Requirement:** Show that the webserver is accessible, either via a public URL or a screenshot including the browser’s address bar.

### Option A: Public URL
🌐 **[http://34.58.249.65/](http://34.58.249.65/)**
    -   (Method used to expose : Loadbalancer)

### Option B: Screenshot (if not public)
🖼️ **[Web Server Screenshot with Address Bar](./screenshots/webserver/webserver-proof.png)**

---

## ✅ 4. Docker Image, Helm Chart, and CI/CD Scripts

> **Requirement:** Include the code for your Docker image, Helm chart, and any CI/CD scripting.

📁 **[Dockerfile](./Dockerfile)**  
📁 **[Helm Chart](./charts/)**  
📁 **[CI/CD](./.github/workflows/deploy.yml)**  
📁 **[Terraform pipeline](./.github/workflows/terraform.yml)**  

Workflow implemented using:
- GitHub Actions

---

## ✅ 5. CI/CD Functionality Proof

> **Requirement:** Provide screenshots of working CI/CD functionality.

🖼️ **[View CI/CD Screenshots](./screenshots/ci-cd/)**  
Includes:
- Successful build pipelines
- Deployment logs(see section below)

🔗 **Live Pipeline Runs / Logs:**
- ✅ [GitHub Actions - Deploy to Kubernetes(GKE)](https://github.com/Avil172/gke-devops/actions/runs/15488597518/job/43608814167)
- ✅ [GitHub Actions - Terraform](https://github.com/Avil172/gke-devops/actions/runs/15488727060)


---

## ✅ 6. Terraform Code

> **Requirement:** Upload the Terraform code in a separate directory titled `Terraform`.

📁 **[Terraform Directory](./terraform/)**  
Contains:
- `main.tf`
- `variables.tf`
- `outputs.tf`

🖼️ **[Terraform Deployment Proof (Screenshots)](./screenshots/terraform-resources/)**  
Includes:
- Cloud console views of infrastructure provisioned via Terraform

---

## 📁 Repository Structure

