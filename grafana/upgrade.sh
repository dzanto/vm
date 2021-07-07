export KUBECONFIG=../rke/kube_config_cluster.yml
helm upgrade grafana grafana/grafana -f ./values.yaml
