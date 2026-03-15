resource "aws_eks_access_entry" "access" {
  for_each = {
    for entry in var.access_entries :
    entry.principal_arn => entry
  }

  cluster_name  = var.cluster_name
  principal_arn = each.value.principal_arn
  type          = "STANDARD"
}

resource "aws_eks_access_policy_association" "policy" {
  for_each = {
    for entry in var.access_entries :
    entry.principal_arn => entry
  }

  cluster_name  = var.cluster_name
  principal_arn = each.value.principal_arn
  policy_arn    = each.value.policy_arn

  access_scope {
    type = "cluster"
  }
}