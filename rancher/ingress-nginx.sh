helm --kubeconfig ../rke/kube_config_cluster.yml repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm --kubeconfig ../rke/kube_config_cluster.yml repo update
helm --kubeconfig ../rke/kube_config_cluster.yml upgrade --install \
  ingress-nginx ingress-nginx/ingress-nginx \
  --namespace ingress-nginx \
  --set controller.service.type=LoadBalancer \
  --version 3.12.0 \
  --create-namespace