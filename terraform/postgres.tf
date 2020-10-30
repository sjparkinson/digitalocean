resource "digitalocean_database_cluster" "postgres" {
  name       = "postgres"
  engine     = "pg"
  version    = "12"
  size       = "db-s-1vcpu-1gb"
  region     = "lon1"
  node_count = 1
}

resource "digitalocean_database_firewall" "k8s-lon1-fw" {
  cluster_id = digitalocean_database_cluster.postgres.id

  rule {
    type  = "k8s"
    value = digitalocean_kubernetes_cluster.k8s-lon1.id
  }
}

resource "digitalocean_database_db" "database-whatsthecharge" {
  cluster_id = digitalocean_database_cluster.postgres.id
  name       = "whatsthecharge_production"
}

resource "digitalocean_database_user" "user-whatsthecharge" {
  cluster_id = digitalocean_database_cluster.postgres.id
  name       = "whatsthecharge"
}

resource "digitalocean_database_connection_pool" "connection-pool-whatsthecharge" {
  cluster_id = digitalocean_database_cluster.postgres.id
  name       = "connection-pool-whatsthecharge"
  mode       = "transaction"
  size       = 5
  db_name    = digitalocean_database_db.database-whatsthecharge.name
  user       = digitalocean_database_user.user-whatsthecharge.name
}