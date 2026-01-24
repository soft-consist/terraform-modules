resource "aws_eks_addon" "kube_proxy" {
  cluster_name    = var.cluster_name
  addon_name      = "kube-proxy"
  addon_version   = var.kube_proxy_version
}

resource "aws_eks_addon" "coredns" {
  cluster_name    = var.cluster_name
  addon_name      = "coredns"
  addon_version   = var.coredns_version
}

resource "aws_eks_addon" "vpc_cni" {
  cluster_name    = var.cluster_name
  addon_name      = "vpc-cni"
  addon_version   = var.vpc_cni_version
}