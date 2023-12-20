provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "hello-world" {
  name       = "hello-world"
  repository = "https://helm.github.io/examples"
  chart      = "hello-world"

  values = [
    file("${path.module}/nginx-values.yaml")
  ]
}
