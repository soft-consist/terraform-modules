############################################
# EKS Access Entries – IAM → Kubernetes Auth
############################################

# Admin access entry
resource "aws_eks_access_entry" "admin" {
  count = var.enable_admin_access ? 1 : 0

  cluster_name  = var.cluster_name
  principal_arn = var.admin_role_arn
  type          = "STANDARD"
}

resource "aws_eks_access_policy_association" "admin" {
  count = var.enable_admin_access ? 1 : 0

  cluster_name  = var.cluster_name
  principal_arn = var.admin_role_arn
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"

  access_scope {
    type = "cluster"
  }
}

############################################
# Read-only access entry (optional)
############################################

resource "aws_eks_access_entry" "readonly" {
  for_each = var.readonly_role_arns

  cluster_name  = var.cluster_name
  principal_arn = each.value
  type          = "STANDARD"
}

resource "aws_eks_access_policy_association" "readonly" {
  for_each = var.readonly_role_arns

  cluster_name  = var.cluster_name
  principal_arn = each.value
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"

  access_scope {
    type = "cluster"
  }
}
