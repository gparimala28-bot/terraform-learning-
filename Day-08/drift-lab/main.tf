provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-091138d0f0d41ff90"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-drift-demo"
  }
}