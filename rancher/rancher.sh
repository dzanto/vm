export KUBECONFIG=../rke/kube_config_cluster.yml
helm repo add rancher-stable https://releases.rancher.com/server-charts/stable
kubectl create namespace cattle-system
helm install rancher rancher-stable/rancher \
  --namespace cattle-system \
  --set hostname=rancher.loc \
  --set replicas=1
kubectl -n cattle-system rollout status deploy/rancher
