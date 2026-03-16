resource "kubernetes_namespace" "argocd" {
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = var.chart_version
  namespace  = kubernetes_namespace.argocd.metadata[0].name

  values = var.values

  create_namespace = false

  wait = true
  timeout = 600

  depends_on = [
    kubernetes_namespace.argocd
  ]
}

resource "kubectl_manifest" "argocd_bootstrap" {

  yaml_body = file(var.bootstrap_file)

  depends_on = [
    helm_release.argocd
  ]
}