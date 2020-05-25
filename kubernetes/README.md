# Kubernetes

## Ingress Controller

Use the Kubernetes maintained NGINX ingress controller.

https://github.com/kubernetes/ingress-nginx

The deployment guide can be found at https://kubernetes.github.io/ingress-nginx/deploy/.

Configure the load balancer.

```bash
kubectl apply digitalocean-load-balancer.yaml
```

## Monitoring

Add kube-state-metrics to enable the DigitalOcean advanced metrics dashboard.

```bash
kubectl apply -f kube-state-metrics.yaml
```

## Autoscaling

Add metrics-server to enable autoscaling with the Horizontal Pod Autoscaler.

```bash
kubectl apply -f metrics-server.yaml
```