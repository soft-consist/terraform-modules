variable "env" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "bastion_assume_role_principals" {
  description = "IAM principals allowed to assume the bastion access role"
  type        = list(string)
}