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
*/