🚀 Terraform Multi-Region EC2 Project

📌 Overview

This project demonstrates how to use Terraform to provision EC2 instances across multiple AWS regions using reusable and dynamic configuration.

It combines core Terraform concepts like:

Multi-region deployment
Variables and tfvars
Conditional expressions
Outputs
Debugging

🧠 Objective

To build a reusable Terraform setup that:

Creates infrastructure in multiple regions
Adapts based on environment (dev/prod)
Avoids hardcoding
Handles real-world errors

⚙️ Features

🌍 Multi-Region Deployment
Uses provider alias to deploy EC2 in:
us-east-1
us-west-2
🔄 Dynamic Configuration
Uses variables and tfvars
Supports multiple environments (dev/prod)
🔀 Conditional Logic
Automatically selects instance type based on environment
📤 Outputs
Displays public IPs of created instances

🚀 How to Run
terraform init
terraform validate
terraform plan
terraform apply

❌ Errors Faced & Fixes

1️⃣ Conditional Expression Error
Issue: Missing false condition
Fix: Added complete ternary expression

2️⃣ Invalid AMI Error
Issue: Incorrect AMI ID
Fix: Used region-specific valid AMI

🧠 Key Learnings
Infrastructure can be fully automated using code
Multi-region setup improves availability
Variables make code reusable
Conditional logic makes infrastructure dynamic
Debugging is a core DevOps skill

🔥 Conclusion

This project demonstrates a real-world Terraform workflow combining automation, flexibility, and problem-solving.
