variable "cluster_name" {
  description = "The name of the EKS cluster to which access will be granted."
  type        = string
}

variable "access_entries" {
  description = "List of IAM principals needing access"
  type = list(object({
    principal_arn = string
    policy_arn    = string
  }))
}