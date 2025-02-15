variable "cluster_name" {
  type        = string
  description = "Name of the cluster"
  default     = "kind-cluster"
}

variable "node_image" {
  type        = string
  description = "Node image to use for booting the cluster"
  default     = "kindest/node:v1.31.1"
}

variable "wait_for_ready" {
  type        = bool
  description = "Wait for the cluster to be ready"
  default     = true
}

variable "kubeconfig_path" {
  type        = string
  description = "Path to the kubeconfig file"
  default     = "~/.kube/config"
}

variable "kind_api_version" {
  type        = string
  description = "API version of the kind config"
  default     = "kind.x-k8s.io/v1alpha4"
}

variable "containerd_config_patches" {
  type        = list(string)
  description = "Containerd config patches"
  default = [
    <<-TOML
            [plugins."io.containerd.grpc.v1.cri".registry.mirrors."localhost:5000"]
                endpoint = ["http://kind-registry:5000"]
            TOML
  ]
}

variable "kubeadm_config_patches" {
  type        = list(string)
  description = "Kubeadm config patches (make sure they are one line strings.)"
  default = [
    "kind: InitConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"ingress-ready=true\"\n",
    "kind: KubeletConfiguration\nserverTLSBootstrap: true\n"
  ]
}


variable "pod_subnet" {
  type        = string
  description = "Pod subnet"
  default     = "10.244.0.0/16"
}

variable "service_subnet" {
  type        = string
  description = "Service subnet"
  default     = "10.96.0.0/12"
}
