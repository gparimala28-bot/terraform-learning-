provider "vault" {
  address = "http://127.0.0.1:8200"

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id   = var.role_id
      secret_id = var.secret_id
    }
  }
}

# Read AWS credentials from Vault
data "vault_kv_secret_v2" "aws" {
  mount = "kv"
  name  = "aws-creds"
}

# AWS Provider using Vault secrets
provider "aws" {
  region     = var.region   
  access_key = data.vault_kv_secret_v2.aws.data["access_key"]
  secret_key = data.vault_kv_secret_v2.aws.data["secret_key"]
}

# Create S3 bucket
resource "aws_s3_bucket" "demo" {
  bucket = var.bucket_name
}