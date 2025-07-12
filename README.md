# 🚀 Medusa Backend Deployment on AWS ECS using Terraform and CI/CD

This project demonstrates deploying the **Medusa open-source headless commerce backend** on **AWS ECS (Fargate)** using **Terraform Infrastructure as Code (IaC)** and setting up an automated **CI/CD pipeline using GitHub Actions**.

---

## 📦 Tech Stack

- **Medusa.js** (Node.js Headless Commerce Backend)
- **Docker**
- **AWS ECS with Fargate**
- **Amazon ECR (optional)**
- **Terraform**
- **GitHub Actions (CI/CD)**

---

## 📌 Project Structure

medusa-ecs-terraform/
├── terraform/
│ ├── main.tf
│ ├── provider.tf
│ ├── variables.tf
│ ├── ecs-task-def.json
│ └── ...
├── Dockerfile
├── .dockerignore
├── .gitignore
├── .github/
│ └── workflows/
│ ├── ci-cd.yaml
│ └── docker-hub.yaml
├── README.md
└── medusa-backend-source/


---

## ⚙️ Infrastructure Overview

- **AWS ECS Cluster** with **Fargate Launch Type**
- **ECS Task Definition** to run Medusa Docker container
- **IAM Roles and Policies** for ECS Task Execution
- **VPC Networking** using existing **Subnet** and **Security Group**
- **Docker Image** built locally and pushed to **Docker Hub** or **ECR**
- **GitHub Actions Workflows**:
  - `ci-cd.yaml` for Terraform deployment on `push` to `main`
  - `docker-hub.yaml` for Docker image build & push to Docker Hub (if applicable)

---

## 🚀 Deployment Instructions

### 📖 Prerequisites

- AWS Account (with ECS, ECR, and IAM access)
- Terraform installed locally
- Docker installed
- GitHub repository with the project files
- AWS Access & Secret Keys added to your GitHub Repo Secrets:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
- Docker Hub credentials (if using Docker Hub for image push)

---

### 📦 Steps to Deploy

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/medusa-ecs-terraform.git
   cd medusa-ecs-terraform

2. **Initialize Terraform**
   ```bash
     cd terraform
     terraform init
   
3. **Apply Terraform Configuration**
    ```bash
    terraform apply

4. **Push Docker Image to Docker Hub or ECR**
    ```bash
    docker build -t your-dockerhub-username/medusa-backend .
    docker push your-dockerhub-username/medusa-backend

5. **Trigger CI/CD Workflow on Push to main**


 ## 📑 References
Medusa Deployment Docs

AWS ECS Docs

Terraform AWS Provider

GitHub Actions Docs

## 🙌 Author
Praneet Biswal
LinkedIn | GitHub

## 📜 License
This project is licensed under the MIT License.
   



   


