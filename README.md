# 🚀 Terraform Learning Repository
A hands-on Terraform learning repository covering Infrastructure as Code (IaC) concepts through practical implementations, real-world workflows, and production-style projects.

This repository is designed to help developers learn Terraform step by step from core fundamentals to advanced infrastructure automation using structured daily modules and real cloud-based implementations.

# 📚 Topics Covered

* Infrastructure as Code (IaC)
* Terraform Fundamentals
* Providers & Resources
* Variables & Output Values
* Terraform Modules
* Multi-Environment Infrastructure
* Terraform State Management
* Remote Backend with S3
* State Locking with DynamoDB
* Terraform Provisioners
* Secrets Management with HashiCorp Vault
* Vault AppRole Authentication
* Dynamic Infrastructure Configuration
* Production-Style Terraform Project Structure

# 📂 Repository Structure

| Folder        | Topics                                              |
| ------------- | --------------------------------------------------- |
| Day-01        | Terraform Fundamentals & IaC                        |
| Day-02        | Terraform Core Concepts                             |
| Day-03        | Terraform Modules                                   |
| Day-04        | Terraform State, Remote Backend & Locking           |
| Day-05        | Terraform Provisioners                              |
| Day-06        | Infrastructure Automation with Provisioners         |
| Day-07        | Terraform Secrets Management with Vault             |
| Day-08        | Vault Integration & Secure Infrastructure           |
| Final-Project | Terraform + Vault Enterprise Infrastructure Project |

# 🛠️ Tech Stack

* Terraform
* AWS
* HashiCorp Vault
* DynamoDB
* Amazon S3
* EC2
* Bash Scripting
* NGINX
   
# 🚀 Getting Started

Clone the repository:
git clone <your-repository-url>
cd <repository-name>

Navigate to any module:
cd Day-01

Initialize Terraform:

terraform init`

terraform fmt

terraform validate 

Preview infrastructure changes:

terraform plan

Apply configuration:

terraform apply

# 🎯 Learning Outcomes

By working through this repository, you will learn how to:

* Build infrastructure using Terraform
* Automate cloud resource provisioning
* Write reusable Terraform modules
* Manage infrastructure across multiple environments
* Configure remote state management
* Implement Terraform state locking
* Secure secrets using HashiCorp Vault
* Authenticate Terraform using Vault AppRole
* Use provisioners for infrastructure automation
* Follow production-grade Terraform practices

# 📌 Concepts Practiced

* Infrastructure as Code
* Cloud Automation
* Modular Terraform Design
* Multi-Environment Deployment
* Remote State Management
* State Locking
* Secrets Management
* Infrastructure Security
* Dynamic Configuration
* Provisioners & Automation
* Reusable Infrastructure Patterns

# 🏗️ Final Project — Enterprise Infrastructure Deployment

The repository includes a production-style Terraform + Vault project demonstrating secure and scalable infrastructure automation on AWS.

## 🚀 Project Highlights

* Reusable Terraform modules
* Multi-environment deployment (dev/stage)
* Remote backend using S3
* DynamoDB state locking
* Secure secret management using Vault
* Vault AppRole authentication
* Automated EC2 & NGINX setup
* Dynamic configuration using tfvars & lookup()

## ☁️ AWS Resources Provisioned

* EC2 Instances
* Security Groups
* S3 Backend
* DynamoDB Lock Table

## 🧩 Architecture Overview

Terraform
   ↓
Vault Authentication
   ↓
AWS Infrastructure
   ↓
S3 Remote Backend
   ↓
DynamoDB State Locking

## 🚀 Deployment Workflow

### Setup Backend
cd backend-setup
terraform init
terraform apply

### Configure Vault
cd ../vault
./setup-vault.sh

### Deploy DEV Environment
cd ../envs/dev
terraform init
terraform plan
terraform apply

### Deploy STAGE Environment
cd ../envs/stage
terraform init
terraform plan
terraform apply

# 🔐 Key Features Implemented

✔ Reusable Terraform modules
✔ Infrastructure automation using IaC
✔ Secure secret handling with Vault
✔ Remote backend configuration
✔ State locking using DynamoDB
✔ Multi-environment deployments
✔ Automated EC2 configuration
✔ Production-style Terraform structure

# 🧠 Key Learnings

Through this repository, I gained hands-on understanding of:

* Infrastructure automation
* Secure cloud provisioning
* Terraform architecture design
* State management strategies
* Secrets management best practices
* Modular infrastructure development
* Production-oriented DevOps workflows

# 🤝 Contributions

Contributions, suggestions, and improvements are welcome.
Feel free to:
* Open issues
* Submit pull requests
* Improve documentation
* Add new Terraform examples or modules

# 📖 References

* [Terraform Documentation]
* [HashiCorp Vault Documentation]
* [AWS Documentation]

⭐ If this repository helped you, consider giving it a star.

Happy Learning & Happy Automating 🚀
