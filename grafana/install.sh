export KUBECONFIG=../rke/kube_config_cluster.yml
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update grafana
helm install grafana grafana/grafana -f ./values.yaml
