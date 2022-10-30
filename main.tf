resource "helm_release" "hello-world" {
  name = "hello-world"
  namespace = "hello-world"
  repository = "https://cloudecho.github.io/charts/"
  name = "hello"
}
