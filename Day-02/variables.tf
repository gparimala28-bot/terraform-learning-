variable "env" {
  description = "Environment"
  type        = string
}

variable "instance_type_dev" {
  default = "t2.micro"
}

variable "instance_type_prod" {
  default = "t2.medium"
}

variable "ami_east" {
  type = string
}

variable "ami_west" {
  type = string
}