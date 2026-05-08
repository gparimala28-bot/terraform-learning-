resource "aws_instance" "this" {

  ami = var.ami

  instance_type = lookup(var.instance_types, var.env)

  security_groups = [var.security_group]

  user_data = file("${path.module}/install-nginx.sh")
  
  tags = {
    Name = "${var.env}-server"
  }
}
