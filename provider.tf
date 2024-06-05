provider "kubernetes" {
  config_path = "config"
  config_context = "arn:aws:eks:us-east-1:654654340382:cluster/test"
}

provider "helm" {
   kubernetes {
  config_path = "config"
  config_context = "arn:aws:eks:us-east-1:654654340382:cluster/test"
}
}

/*

terraform {
  required_version = ">= 0.13.0"
  
}

provider "kubernetes" {
  host     = "https://5F6CCBCB4A4E25132B1054A82A218324.gr7.us-east-1.eks.amazonaws.com"
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