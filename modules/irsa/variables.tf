variable "role_name" {
  type = string
}

variable "oidc_provider_arn" {
  type = string
}

variable "oidc_provider_url" {
  type = string
}

variable "namespace" {
  type = string
}

variable "service_account" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "policy_arns" {
  type = list(string)
}