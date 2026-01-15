variable "env" {}
variable "vpc_id" {}
variable "subnet_id" {}

variable "ami" {}
variable "instance_type" {}
variable "key_name" {}

variable "allowed_ssh_cidr" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}
