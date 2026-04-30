 🚀 Terraform Modules EC2 Project

## 📌 Overview

This project demonstrates how to convert a **monolithic Terraform setup** into a **modular and reusable architecture** using Terraform modules.

## 🧠 Objective

To build a modular Terraform setup that:

* Breaks large infrastructure into smaller reusable modules
* Improves code organization and scalability
* Passes inputs from root to module
* Retrieves outputs from module
* Handles real-world errors during modularization

## ⚙️ Features

### 🧱 Modular Architecture

* Converted single `main.tf` into reusable module
* Created `modules/ec2` for resource logic

### 🔄 Reusable Configuration

* Used variables and tfvars for dynamic input
* Same module can be reused for multiple environments

### 🔗 Input & Output Flow

* Inputs passed from root → module
* Outputs returned from module → root

### 🧩 Separation of Concerns

* Root module → controls flow and inputs
* Child module → creates actual resources

### 📤 Outputs

* Displays EC2 public IP using module output

## 🚀 How to Run
terraform init
terraform validate
terraform plan
terraform apply

## ❌ Errors Faced & Fixes

### 1️⃣ Reference to Undeclared Module

Issue:Tried to access module output inside module
Fix: Used resource reference inside module

### 2️⃣ Missing Root Variables

Issue:Variables were not recreated in root
Fix:Added `variables.tf` in root

### 3️⃣ Output Not Displayed

Issue:Output defined only inside module
Fix:Exposed output in root

## 🧠 Key Learnings

* Modules make Terraform code reusable and clean
* Root module controls inputs and orchestration
* Child module handles resource creation
* Inputs flow from root → module
* Outputs flow from module → root
* Debugging is essential when restructuring code

## 🔥 Conclusion

This project helped me move from writing Terraform code in a single file to designing **modular, scalable, and reusable infrastructure systems**.
