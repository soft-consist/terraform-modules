variable "namespace" {
  default = "argocd"
}

variable "chart_version" {
  default = "5.51.6"
}

variable "values" {
  type = list(string)
  default = []
}

variable "bootstrap_file" {
  type = string
}

variable "enable_bootstrap" {
  default = false
}
