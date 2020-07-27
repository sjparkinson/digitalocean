provider "digitalocean" {
  version = "~> 1.18"
}

resource "digitalocean_kubernetes_cluster" "k8s-lon1" {
  name    = "k8s-lon1"
  region  = "lon1"
  version = "1.17.5-do.0"

  node_pool {
    name       = "pool-standard"
    size       = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes  = 2
    max_nodes  = 5
  }
}
