output "admin_access_role" {
  description = "Admin IAM role granted EKS access"
  value       = var.enable_admin_access ? var.admin_role_arn : null
}

output "readonly_access_roles" {
  description = "Readonly IAM roles granted EKS access"
  value       = var.readonly_role_arns
}
