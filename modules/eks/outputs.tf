output "cluster_name" {
  description = "EKS Cluster Name"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "EKS Cluster Endpoint"
  value       = aws_eks_cluster.this.endpoint
}

output "cluster_ca" {
  description = "EKS Cluster CA"
  value       = aws_eks_cluster.this.certificate_authority[0].data
}

output "oidc_provider_arn" {
  value = aws_iam_openid_connect_provider.this.arn
}

output "oidc_provider_url" {
  value = aws_eks_cluster.this.identity[0].oidc[0].issuer
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.this.certificate_authority[0].data
}