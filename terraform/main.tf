provider "digitalocean" {
  version = "~> 1.18"
}

resource "digitalocean_certificate" "isitup-org-tls-certificate" {
  name    = "isitup-org"
  type    = "lets_encrypt"
  domains = ["isitup.org"]
}

resource "digitalocean_kubernetes_cluster" "k8s-lon1" {
  name    = "k8s-lon1"
  region  = "lon1"
  version = "1.17.5-do.0"

  node_pool {
    name       = "pool-duir0jtmp"
    size       = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 2
  }
}

# Used to route UDP & TCP mindustry traffic to the node running the pod.
resource "digitalocean_floating_ip" "mindustry" {
  droplet_id = 193133851
  region     = "lon1"
}