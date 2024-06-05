resource "helm_release" "chart-installer" {
  name       = "chart-installer"
  chart      = var.nombre_chart
  repository    = var.repository_url_chart
}
