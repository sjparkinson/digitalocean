# Kubernetes

## Ingress Controller

Use the Kubernetes maintained NGINX ingress controller.

https://github.com/kubernetes/ingress-nginx

The deployment guide can be found at https://kubernetes.github.io/ingress-nginx/deploy/.

Configure the load balancer.

```bash
kubectl apply -l 'app.kubernetes.io/part-of=ingress-nginx' --prune -f digitalocean-load-balancer.yaml
```

## Monitoring

Add kube-state-metrics to enable the DigitalOcean advanced metrics dashboard.

```bash
kubectl apply -l 'app.kubernetes.io/part-of=kube-state-metrics' --prune -f kube-state-metrics.yaml
```

## Autoscaling

Add metrics-server to enable autoscaling with the Horizontal Pod Autoscaler.

```bash
kubectl apply -l 'app.kubernetes.io/part-of=metrics-server' --prune -f metrics-server.yaml
```