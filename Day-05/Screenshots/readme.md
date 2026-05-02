🚀 Terraform Modules + Provisioners Project
📌 Overview

This project demonstrates how to use Terraform Modules + Provisioners to create infrastructure and deploy an application automatically.

🧠 Objective

To understand and implement:

Terraform Modules (modular structure)
Infrastructure creation (VPC, Subnet, EC2)
Provisioners (file + remote-exec)
Automated app deployment
End-to-end DevOps workflow
⚙️ What I Implemented
Created modular Terraform project structure
Built separate modules:
VPC
Security Group
EC2
Created a Flask application (app.py)
Used file provisioner to copy app to EC2
Used remote-exec provisioner to:
Install dependencies
Run application
Connected all modules from root module
Deployed infrastructure using:
terraform init
terraform apply
🔄 Project Flow
Terraform creates network (VPC + subnet)
Security group allows access (SSH + app port)
EC2 instance is launched
App file is copied to EC2
Dependencies are installed
Flask app starts automatically
🧪 Output
Terraform outputs public IP
Application accessible via:
http://<public-ip>:5000

👉 Output:

Hello Terraform Modules!
❌ Issues Faced & Fixes
Provisioner Timing Issue
Issue: Commands failed during execution
Fix: Added sleep to wait for EC2 readiness
App Not Running
Issue: App exited immediately
Fix:
Used correct working directory
Ran app using nohup
Debugging Issues
Issue: Hard to identify failure
Fix:Added debug.log
Checked process using ps

🧠 Key Learnings
Modules improve:
Reusability
Code organization
Scalability
Provisioners help:
Deploy applications
Configure servers
Debugging approach:
Terraform → SSH → Fix → Automate
Automation flow:
Infra → Config → App

🔥 Conclusion

This project helped me understand:

How to design Terraform projects using modules
How to automate application deployment
How to debug and stabilize provisioners

👉 It reflects real-world DevOps workflow from setup to automation
