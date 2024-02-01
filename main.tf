terraform {
  required_providers {
    kind = {
        source = "tehcyx/kind"
        version = "0.0.13"
    }
  }
}

# Configure the Kind Provider
provider "kind" {}

# Create a cluster
resource "kind_cluster" "default" {
    name = "test-cluster"
}

provider "helm" {
  kubernetes {
    config_path = "./test-cluster-config"
  }
  
}

resource "helm_release" "grafana" {
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"

}

resource "helm_release" "prometheus" {
  name       = "prometheus"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus"

}

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"

}

