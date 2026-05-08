variable "region" {}

variable "ami" {}

variable "env" {}

variable "instance_types" {
  type = map(string)
}
