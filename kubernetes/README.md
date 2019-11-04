# Kubernetes

## Ingress Controller

Use the Kubernetes maintained NGINX ingress controller.

https://github.com/kubernetes/ingress-nginx

The deployment guide can be found at https://kubernetes.github.io/ingress-nginx/deploy/.

Configure ingress-nginx.

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml
```

And the load balancer.

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml
```

**Upgrading**

The guide can be found at https://kubernetes.github.io/ingress-nginx/deploy/upgrade/.

```bash
kubectl edit deployment nginx-ingress-controller
```

## Cert Manager

> cert-manager is a native Kubernetes certificate management controller. It can help with issuing certificates from a variety of sources, such as Let’s Encrypt, HashiCorp Vault, Venafi, a simple signing keypair, or self signed.

https://cert-manager.readthedocs.io/en/latest/index.html

Add a DigitalOcean personal access token. Generate a token at https://cloud.digitalocean.com/account/api/tokens/new.

```bash
kubectl create secret generic digitalocean --from-literal=access-token=$(read -p "Enter your DigitalOcean personal access token: " token; echo $token)
```

Configure cert-manager.

```bash
kubectl create namespace cert-manager
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v0.11.0/cert-manager.yaml
```

Add the Lets Encrypt cluster issuers.

```bash
kubectl apply -f letsencrypt-cluster-issuers.yaml
```