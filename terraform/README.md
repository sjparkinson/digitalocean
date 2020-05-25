# Terraform Configuration

## Terraform Importing

```bash
# Imports for Kubernetes
terraform import digitalocean_kubernetes_cluster.k8s-lon1 d3bb65a7-1cf5-40d5-8cba-93b0dd0f6b1e

# Imports for TLS certificates
terraform import digitalocean_certificate.isitup-org-tls-certificate 99c461ff-9017-4ae1-bfd3-f1102253fd7d

# Imports for floating IP addresses
terraform import digitalocean_floating_ip.mindustry 159.65.212.70

# Imports for isitup.org
terraform import digitalocean_domain.isitup-org isitup.org
terraform import digitalocean_record.isitup-org-caa isitup.org,82265461
terraform import digitalocean_record.isitup-org-dmarc isitup.org,82264234
terraform import digitalocean_record.isitup-org-a isitup.org,100686440
terraform import digitalocean_record.isitup-org-ns1 isitup.org,82264193
terraform import digitalocean_record.isitup-org-ns2 isitup.org,82264194
terraform import digitalocean_record.isitup-org-ns3 isitup.org,82264195

# Imports for uncomplicated.systems
terraform import digitalocean_domain.uncomplicated-systems uncomplicated.systems
terraform import digitalocean_record.uncomplicated-systems-caa uncomplicated.systems,82265479
terraform import digitalocean_record.uncomplicated-systems-dmarc uncomplicated.systems,68250163
terraform import digitalocean_record.uncomplicated-systems-a1 uncomplicated.systems,68315155
terraform import digitalocean_record.uncomplicated-systems-a2 uncomplicated.systems,68315180
terraform import digitalocean_record.uncomplicated-systems-a3 uncomplicated.systems,68315182
terraform import digitalocean_record.uncomplicated-systems-a4 uncomplicated.systems,68315186
terraform import digitalocean_record.uncomplicated-systems-ns1 uncomplicated.systems,68250117
terraform import digitalocean_record.uncomplicated-systems-ns2 uncomplicated.systems,68250118
terraform import digitalocean_record.uncomplicated-systems-ns3 uncomplicated.systems,68250119

# Imports for proven.properties
terraform import digitalocean_domain.proven-properties proven.properties
terraform import digitalocean_record.proven-properties-caa proven.properties,82266017
terraform import digitalocean_record.proven-properties-dmarc proven.properties,82270263
terraform import digitalocean_record.proven-properties-dkim proven.properties,82270270
terraform import digitalocean_record.proven-properties-spf proven.properties,82270282
terraform import digitalocean_record.proven-properties-a1 proven.properties,82265997
terraform import digitalocean_record.proven-properties-a2 proven.properties,82265999
terraform import digitalocean_record.proven-properties-a3 proven.properties,82266001
terraform import digitalocean_record.proven-properties-a4 proven.properties,82266004
terraform import digitalocean_record.proven-properties-mx1 proven.properties,82270232
terraform import digitalocean_record.proven-properties-mx2 proven.properties,82270246
terraform import digitalocean_record.proven-properties-mx3 proven.properties,82270253
terraform import digitalocean_record.proven-properties-mx4 proven.properties,82270258
terraform import digitalocean_record.proven-properties-mx5 proven.properties,82270260
terraform import digitalocean_record.proven-properties-ns1 proven.properties,82265974
terraform import digitalocean_record.proven-properties-ns2 proven.properties,82265975
terraform import digitalocean_record.proven-properties-ns3 proven.properties,82265977
```