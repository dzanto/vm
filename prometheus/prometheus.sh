export KUBECONFIG=../rke/kube_config_cluster.yml
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/prometheus -f ./values.yaml
