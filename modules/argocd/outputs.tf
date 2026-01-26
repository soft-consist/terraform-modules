output "argocd_namespace" {
  value = kubernetes_namespace.argocd.metadata[0].name
}

output "cluster_certificate_authority_data" {
  description = "EKS cluster CA data"
  value       = aws_eks_cluster.this.certificate_authority[0].data
}
