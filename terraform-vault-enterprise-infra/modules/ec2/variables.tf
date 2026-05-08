variable "ami" {}

variable "env" {}

variable "security_group" {}

variable "instance_types" {
  type = map(string)
}
