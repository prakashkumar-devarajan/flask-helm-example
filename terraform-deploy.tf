provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "flask-helm-example" {
  name       = "flask-helm-example"
  chart      = "./helm/flask-helm-example"
}
