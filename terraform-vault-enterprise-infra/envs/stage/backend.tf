terraform {

  backend "s3" {

    bucket = "secure-state-bucket-gpari"

    key = "stage/terraform.tfstate"

    region = "us-east-1"

    dynamodb_table = "terraform-lock-table"

    encrypt = true
  }
}
