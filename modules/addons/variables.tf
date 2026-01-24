variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "kube_proxy_version" {
  description = "Version of kube-proxy to install"
  type        = string
}

variable "coredns_version" {
  description = "Version of CoreDNS to install"
  type        = string
}

variable "vpc_cni_version" {
  description = "Version of VPC CNI to install"
  type        = string
}