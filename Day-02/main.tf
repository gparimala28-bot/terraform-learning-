provider "aws" {
  alias  = "east"
  region = "us-east-1"
}

provider "aws" {
  alias  = "west"
  region = "us-west-2"
}
resource "aws_instance" "east_instance" {
  provider = aws.east
  ami = var.ami_east

   instance_type = var.env == "prod" ? var.instance_type_prod : var.instance_type_dev

  tags = {
    Name = "${var.env}-east-instance"
  }
}

resource "aws_instance" "west_instance" {
  provider = aws.west
  ami = var.ami_west

   instance_type = var.env == "prod" ? var.instance_type_prod : var.instance_type_dev

  tags = {
    Name = "${var.env}-west-instance"
  }
}
