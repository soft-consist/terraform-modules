variable "role_name" {
    description = "The name of the role to create."
    type        = string
}

variable "assume_role_policy" {
    description = "The assume role policy for the role."
    type        = string
}

variable "policy_arns" {
    description = "List of IAM policies to attach to the role."
    type        = list(string)
}
