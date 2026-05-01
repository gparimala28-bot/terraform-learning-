terraform {
  backend "s3" {
    bucket = "statefile-bucket-1gpari"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}  

