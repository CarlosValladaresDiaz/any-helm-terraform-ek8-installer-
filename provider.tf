provider "kubernetes" {
  config_path = "config"
  config_context = "kubernetes-admin@kubernetes"
}

provider "helm" {
   kubernetes {
  config_path = "config"
  config_context = "kubernetes-admin@kubernetes"
}
}
/*


terraform {
  required_version = ">= 0.13.0"
  
}

provider "kubernetes" {
  host     = data.civo_kubernetes_cluster.cluster.api_endpoint
  client_certificate = base64decode(
    yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users[0].user.client-certificate-data
  )
  client_key = base64decode(
    yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users[0].user.client-key-data
  )
  cluster_ca_certificate = base64decode(
    yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).clusters[0].cluster.certificate-authority-data
  )
}

provider "helm" {
    kubernetes {
    host     = data.civo_kubernetes_cluster.cluster.api_endpoint
    client_certificate = base64decode(
      yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users[0].user.client-certificate-data
    )
    client_key = base64decode(
      yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).users[0].user.client-key-data
    )
    cluster_ca_certificate = base64decode(
      yamldecode(civo_kubernetes_cluster.cluster.kubeconfig).clusters[0].cluster.certificate-authority-data
    )
  }
}
*/