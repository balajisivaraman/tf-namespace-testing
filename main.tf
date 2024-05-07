variable "k8s_namespace" {
  type = string
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = var.k8s_namespace
  }
}
