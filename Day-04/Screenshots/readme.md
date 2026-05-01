Terraform State Management Project (Remote State + Locking)

📌 Overview

This project demonstrates how Terraform manages infrastructure state and how it can be migrated from local state to a remote backend (S3) with state locking using DynamoDB.

🧠 Objective

To understand and implement:

Terraform state (terraform.tfstate)

Local vs Remote state

State migration to S3

State locking using DynamoDB

Backend reconfiguration

⚙️ What I Implemented

Created infrastructure using Terraform with local state

Observed how Terraform tracks resources using terraform.tfstate

Created an S3 bucket to store remote state

Configured Terraform backend to use S3

Migrated existing state from local to S3

Created a DynamoDB table for state locking

Enabled locking in backend configuration

Tested locking by running Terraform in multiple terminals

🔄 State Flow

Initially, Terraform stored state locally

After backend configuration, state was migrated to S3

DynamoDB was added to control concurrent access

❌ Errors Faced & Fixes

Backend Initialization Required

Issue:Terraform threw an error after adding backend configuration

Reason:Backend was added after initial Terraform setup

Fix:Reinitialized Terraform to apply backend changes

Locking Not Enabled Initially

Issue:State locking was not working

Fix:Added DynamoDB table configuration in backend

🧪 Locking Test

Ran Terraform in one terminal

Attempted execution in another terminal

Result:

Second execution was blocked, confirming locking works

🧠 Key Learnings

Terraform uses terraform.tfstate to track infrastructure

Local state is not suitable for team environments

Remote state (S3) enables centralized management

DynamoDB prevents simultaneous execution

Backend changes require reinitialization

State migration is handled safely by Terraform

🔥 Conclusion

This project helped in understanding how Terraform manages state and how to transition from a local setup to a production-ready remote state system with locking, which is essential for real-world infrastructure management.
