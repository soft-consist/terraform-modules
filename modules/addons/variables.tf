variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "addons" {
  description = "Map of EKS addons to enable"
  type = map(object({
    version = optional(string)
  }))
}