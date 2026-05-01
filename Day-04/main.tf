provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "tf_bucket" {
  bucket = "statefile-bucket-1gpari"
}
resource "aws_dynamodb_table" "lock_table" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
} 

module "ec2_instance" {
  source = "./modules/ec2"

  ami        = var.ami
  instance_type  = var.instance_type

}