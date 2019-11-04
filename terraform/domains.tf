// isitup.org
resource "digitalocean_domain" "isitup-org" {
  name = "isitup.org"
}

resource "digitalocean_record" "isitup-org-caa" {
  domain = digitalocean_domain.isitup-org.name
  type   = "CAA"
  name   = "@"
  value  = "letsencrypt.org."
  tag    = "issue"
  flags  = "0"
  ttl    = 3600
}

resource "digitalocean_record" "isitup-org-dmarc" {
  domain = digitalocean_domain.isitup-org.name
  type   = "TXT"
  name   = "_dmarc"
  value  = "v=DMARC1; p=reject; sp=reject"
  ttl    = 3600
}

resource "digitalocean_record" "isitup-org-a" {
  domain = digitalocean_domain.isitup-org.name
  type   = "A"
  name   = "@"
  value  = "159.65.214.172"
  ttl    = 3600
}

resource "digitalocean_record" "isitup-org-ns1" {
  domain = digitalocean_domain.isitup-org.name
  type   = "NS"
  name   = "@"
  value  = "ns1.digitalocean.com."
  ttl    = 3600
}

resource "digitalocean_record" "isitup-org-ns2" {
  domain = digitalocean_domain.isitup-org.name
  type   = "NS"
  name   = "@"
  value  = "ns2.digitalocean.com."
  ttl    = 3600
}

resource "digitalocean_record" "isitup-org-ns3" {
  domain = digitalocean_domain.isitup-org.name
  type   = "NS"
  name   = "@"
  value  = "ns3.digitalocean.com."
  ttl    = 3600
}

// uncomplicated.systems
resource "digitalocean_domain" "uncomplicated-systems" {
  name = "uncomplicated.systems"
}

resource "digitalocean_record" "uncomplicated-systems-caa" {
  domain = digitalocean_domain.uncomplicated-systems.name
  type   = "CAA"
  name   = "@"
  value  = "letsencrypt.org."
  tag    = "issue"
  flags  = "0"
  ttl    = 3600
}

resource "digitalocean_record" "uncomplicated-systems-dmarc" {
  domain = digitalocean_domain.uncomplicated-systems.name
  type   = "TXT"
  name   = "_dmarc"
  value  = "v=DMARC1; p=reject; sp=reject"
  ttl    = 3600
}

resource "digitalocean_record" "uncomplicated-systems-a1" {
  domain = digitalocean_domain.uncomplicated-systems.name
  type   = "A"
  name   = "@"
  value  = "185.199.108.153"
  ttl    = 3600
}

resource "digitalocean_record" "uncomplicated-systems-a2" {
  domain = digitalocean_domain.uncomplicated-systems.name
  type   = "A"
  name   = "@"
  value  = "185.199.109.153"
  ttl    = 3600
}

resource "digitalocean_record" "uncomplicated-systems-a3" {
  domain = digitalocean_domain.uncomplicated-systems.name
  type   = "A"
  name   = "@"
  value  = "185.199.110.153"
}

resource "digitalocean_record" "uncomplicated-systems-a4" {
  domain = digitalocean_domain.uncomplicated-systems.name
  type   = "A"
  name   = "@"
  value  = "185.199.111.153"
  ttl    = 3600
}

resource "digitalocean_record" "uncomplicated-systems-ns1" {
  domain = digitalocean_domain.uncomplicated-systems.name
  type   = "NS"
  name   = "@"
  value  = "ns1.digitalocean.com."
  ttl    = 3600
}

resource "digitalocean_record" "uncomplicated-systems-ns2" {
  domain = digitalocean_domain.uncomplicated-systems.name
  type   = "NS"
  name   = "@"
  value  = "ns2.digitalocean.com."
  ttl    = 3600
}

resource "digitalocean_record" "uncomplicated-systems-ns3" {
  domain = digitalocean_domain.uncomplicated-systems.name
  type   = "NS"
  name   = "@"
  value  = "ns3.digitalocean.com."
  ttl    = 3600
}

// proven.properties
resource "digitalocean_domain" "proven-properties" {
  name = "proven.properties"
}

resource "digitalocean_record" "proven-properties-caa" {
  domain = digitalocean_domain.proven-properties.name
  type   = "CAA"
  name   = "@"
  value  = "letsencrypt.org."
  tag    = "issue"
  flags  = "0"
  ttl    = 3600
}

resource "digitalocean_record" "proven-properties-spf" {
  domain = digitalocean_domain.proven-properties.name
  type   = "TXT"
  name   = "@"
  value  = "v=spf1 include:_spf.google.com ~all"
  ttl    = 3600
}

resource "digitalocean_record" "proven-properties-dkim" {
  domain = digitalocean_domain.proven-properties.name
  type   = "TXT"
  name   = "google._domainkey"
  value  = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2QxSf+PmhBA55FjFpjyN4y4n+mYxVTcRYQu9+PNj81XJ2fOH/kRAMq7Fm8wzm/UXA0rG/AdBGFaLoIam0A2osyNnscS3HQRFneT5tuoslHQXOSHeGGFY15AP0g9Mb6q8oKZbxag6Yw47DSfBdqgkQ+gl+D/IcTXXZmI4710kA/Dfxu7e6GkthbQojXYNkpB69vP3IM5S1rAE6Ns48aqmf3TjARS7hkxrH+31DeFEo5KZncqH/dNjEb51wMpGSUVL8DLLhiDz0+ai9p9MnAKIEZYMyAhrXREWQL5KanHmyQnziAmQx8pNk8UOV7uibBjKrhaG7svgCB/cFni+ncv9PQIDAQAB"
  ttl    = 3600
}

resource "digitalocean_record" "proven-properties-dmarc" {
  domain = digitalocean_domain.proven-properties.name
  type   = "TXT"
  name   = "_dmarc"
  value  = "v=DMARC1 p=quarantine pct=100 rua=mailto:samuel@proven.properties sp=reject aspf=s"
  ttl    = 3600
}

resource "digitalocean_record" "proven-properties-mx1" {
  domain   = digitalocean_domain.proven-properties.name
  type     = "MX"
  name     = "@"
  priority = 1
  value    = "aspmx.l.google.com."
  ttl      = 3600
}

resource "digitalocean_record" "proven-properties-mx2" {
  domain   = digitalocean_domain.proven-properties.name
  type     = "MX"
  name     = "@"
  priority = 5
  value    = "alt1.aspmx.l.google.com."
  ttl      = 3600
}

resource "digitalocean_record" "proven-properties-mx3" {
  domain   = digitalocean_domain.proven-properties.name
  type     = "MX"
  name     = "@"
  priority = 5
  value    = "alt2.aspmx.l.google.com."
  ttl      = 3600
}

resource "digitalocean_record" "proven-properties-mx4" {
  domain   = digitalocean_domain.proven-properties.name
  type     = "MX"
  name     = "@"
  priority = 10
  value    = "alt3.aspmx.l.google.com."
  ttl      = 3600
}

resource "digitalocean_record" "proven-properties-mx5" {
  domain   = digitalocean_domain.proven-properties.name
  type     = "MX"
  name     = "@"
  priority = 10
  value    = "alt4.aspmx.l.google.com."
  ttl      = 3600
}

resource "digitalocean_record" "proven-properties-a1" {
  domain = digitalocean_domain.proven-properties.name
  type   = "A"
  name   = "@"
  value  = "185.199.108.153"
  ttl    = 3600
}

resource "digitalocean_record" "proven-properties-a2" {
  domain = digitalocean_domain.proven-properties.name
  type   = "A"
  name   = "@"
  value  = "185.199.109.153"
  ttl    = 3600
}

resource "digitalocean_record" "proven-properties-a3" {
  domain = digitalocean_domain.proven-properties.name
  type   = "A"
  name   = "@"
  value  = "185.199.110.153"
}

resource "digitalocean_record" "proven-properties-a4" {
  domain = digitalocean_domain.proven-properties.name
  type   = "A"
  name   = "@"
  value  = "185.199.111.153"
  ttl    = 3600
}

resource "digitalocean_record" "proven-properties-ns1" {
  domain = digitalocean_domain.proven-properties.name
  type   = "NS"
  name   = "@"
  value  = "ns1.digitalocean.com."
  ttl    = 3600
}

resource "digitalocean_record" "proven-properties-ns2" {
  domain = digitalocean_domain.proven-properties.name
  type   = "NS"
  name   = "@"
  value  = "ns2.digitalocean.com."
  ttl    = 3600
}

resource "digitalocean_record" "proven-properties-ns3" {
  domain = digitalocean_domain.proven-properties.name
  type   = "NS"
  name   = "@"
  value  = "ns3.digitalocean.com."
  ttl    = 3600
}
