variable "env" {
  description = "Environment name"
  type        = string
}

variable "cluster_name" {
  description = "Cluster Name"
  type        = string
}

variable "cluster_version" {
  description = "Cluster Version"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs"
  type        = list(string)
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "desired_size" {
  description = "Desired size of the node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum size of the node group"
  type        = number
  default     = 10
}

variable "min_size" {
  description = "Minimum size of the node group"
  type        = number
  default     = 1
}

variable "node_instance_types" {
  description = "Instance types for the node group"
  type        = list(string)
}

variable "allowd_cidr_blocks" {
  description = "CIDR blocks allowed to access the cluster"
  type        = list(string)
  default = []
}

# variable "bastion_role_arn" {
#   description = "IAM role ARN allowed to access EKS cluster"
#   type        = string
# }

variable "bastion_access_role_arn" {
  description = "IAM role ARN used for bastion access to EKS"
  type        = string
}