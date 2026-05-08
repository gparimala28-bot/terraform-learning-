module "security_group" {

  source = "../../modules/security-group"

  env = var.env
}

module "ec2" {

  source = "../../modules/ec2"

  ami = var.ami

  env = var.env

  security_group = module.security_group.sg_name

  instance_types = var.instance_types
}
