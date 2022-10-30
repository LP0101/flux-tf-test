resource "kubernetes_namespace" "hello-world" {

  metadata {
    name = "hello-world"
    labels = {
      name = "hello-world"
    }
  }
}

resource "helm_release" "hello-world" {
  depends_on = [kubernetes_namespace.hello-world]
  name = "hello-world"
  namespace = "hello-world"
  repository = "https://cloudecho.github.io/charts/"
  name = "hello"
}
