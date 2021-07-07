export KUBECONFIG=../rke/kube_config_cluster.yml
helm upgrade prometheus prometheus-community/prometheus -f ./values.yaml
