Terraform + Vault Enterprise Infrastructure Project

📌 Overview

Designed and implemented a production-style Infrastructure as Code (IaC) project using Terraform and HashiCorp Vault on AWS.

The project demonstrates secure multi-environment infrastructure provisioning with reusable Terraform modules, remote state management, Vault-based secret handling, and automated EC2 configuration.

🚀 Key Highlights
Built reusable Terraform modules for scalable infrastructure provisioning
Implemented multi-environment deployment (dev, stage) with isolated state management
Configured remote backend using Amazon S3
Enabled state locking using DynamoDB
Integrated HashiCorp Vault for secure AWS credential management
Implemented Vault AppRole authentication for secure secret access
Automated EC2 provisioning and NGINX setup using user-data scripts
Used tfvars and lookup() for dynamic environment-specific configurations
Followed industry-standard Terraform project structure and best practices

🏗 Architecture

Terraform
   ↓
Vault Authentication
   ↓
AWS Infrastructure
   ↓
S3 Remote Backend
   ↓
DynamoDB State Locking

☁ AWS Resources Provisioned
EC2 Instances
Security Groups
S3 Backend
DynamoDB Lock Table

🛠 Technologies Used
Terraform
AWS
HashiCorp Vault
Bash Scripting
NGINX

🚀 Deployment Workflow
# Setup Backend
cd backend-setup
terraform init
terraform apply

# Configure Vault
cd ../vault
./setup-vault.sh

# Deploy DEV Environment
cd ../envs/dev
terraform init
terraform plan
terraform apply

# Deploy STAGE Environment
cd ../stage
terraform init
terraform plan
terraform apply

🌐 Deployment Verification

Successfully validated infrastructure deployment by accessing the NGINX web server hosted on provisioned EC2 instances.

📚 Outcome

This project demonstrates hands-on experience in building secure, modular, and production-style cloud infrastructure automation workflows aligned with real-world DevOps practices.