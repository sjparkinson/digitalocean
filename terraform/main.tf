provider "digitalocean" {
  version = "~> 1.18"
}

resource "digitalocean_certificate" "isitup-org-tls-certificate" {
  name    = "isitup-org"
  type    = "lets_encrypt"
  domains = ["isitup.org"]
}
