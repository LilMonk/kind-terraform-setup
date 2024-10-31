terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.14.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.33.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.16.1"
    }
    kind = {
      source = "tehcyx/kind"
      version = ">= 0.6.0"
    }

    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.3"
    }
  }
}

provider "kind" {
    # Configuration options for the Kind provider
}

provider "helm" {
    # Configuration options for the Helm provider
}

provider "kubernetes" {
    # Configuration options for the Kubernetes provider
}

provider "kubectl" {
    # Configuration options for the Kubectl provider
    config_path = var.kubeconfig_path
}

provider "null" {
  
}