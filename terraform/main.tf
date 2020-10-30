resource "digitalocean_kubernetes_cluster" "k8s-lon1" {
  name         = "k8s-lon1"
  region       = "lon1"
  version      = "1.19.3-do.0"
  auto_upgrade = true

  node_pool {
    name       = "pool-standard"
    size       = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 2
  }
}
