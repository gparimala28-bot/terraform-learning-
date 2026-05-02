resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  key_name      = var.key_name

  connection {
  type        = "ssh"
  user        = "ubuntu"
  private_key = file("/home/gpari/.ssh/kevin.pem")
  host        = self.public_ip
  timeout     = "5m"
}

provisioner "file" {
  source      = var.app_file
  destination = "/home/ubuntu/app.py"
}

provisioner "remote-exec" {
  inline = [
    "sleep 30",
    "sudo apt update -y",
    "sudo apt install -y python3-flask",
    "cd /home/ubuntu",
    "nohup python3 app.py > app.log 2>&1 &",
    "sleep 5",
    "ps aux | grep python > process.log"
  ]
}
}
