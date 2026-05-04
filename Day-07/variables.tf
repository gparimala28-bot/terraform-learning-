variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "role_id" {
  description = "Vault AppRole Role ID"
  type        = string
}

variable "secret_id" {
  description = "Vault AppRole Secret ID"
  type        = string
}