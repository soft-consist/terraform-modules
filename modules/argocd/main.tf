resource "kubernetes_namespace" "argocd" {
  metadata {
    name = var.namespace
  }
  depends_on = [kubernetes_config_map.aws_auth]
}

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = var.chart_version
  namespace  = kubernetes_namespace.argocd.metadata[0].name
  values   = var.values
  depends_on = [
    kubernetes_namespace.argocd
  ]
}