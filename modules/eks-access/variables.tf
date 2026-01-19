variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "admin_role_arn" {
  description = "IAM role ARN that should have EKS admin (system:masters) access"
  type        = string
}

variable "enable_admin_access" {
  description = "Enable admin access entry"
  type        = bool
  default     = true
}

variable "readonly_role_arns" {
  description = "Map of readonly IAM role ARNs"
  type        = map(string)
  default     = {}
}
