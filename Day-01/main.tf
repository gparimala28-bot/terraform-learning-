provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-098e39bafa7e7303d"      
  instance_type = "t2.micro"  
  key_name      = "kevin.pem"     

  tags = {
    Name = "terraform-instance"
  }
}


