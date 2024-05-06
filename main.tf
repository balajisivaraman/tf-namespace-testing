variable "k8s_namespace" {
  type = string
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = var.k8s_namespace
  }
}
