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

resource "digitalocean_kubernetes_node_pool" "pool-cpu-optimized" {
  cluster_id = digitalocean_kubernetes_cluster.k8s-lon1.id
  name       = "pool-cpu-optimized"
  size       = "c-2"
  node_count = 1
}

# Used to route UDP & TCP mindustry traffic to the node running the pod.
# TODO: update droplet_id to the new CPU optimized node, find it with `doctl compute droplet list --format 'ID,Name,VCPUs,Memory'`
resource "digitalocean_floating_ip" "mindustry" {
  droplet_id = 194856707
  region     = "lon1"
}
