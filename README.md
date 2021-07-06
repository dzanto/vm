# vm
## Подготовка ВМ
- Создаем виртуальные хосты
- Добавляем в /etc/hosts записи: `192.168.7.139 rancher.loc`
- Добавляем публичный ssh ключ на каждый хост: `ssh-copy-id ubuntu@rancher.loc`
- На rancher.loc копируем ssh ключ в каталог root: `sudo cp authorized_keys /root/.ssh`
- На rancher.loc добавляем в /etc/hosts записи: `127.0.0.1 rancher.loc`

## Ansible
- Отключаем Swap, устанавливаем модули ядра, вносим изменения в sysctl: `ansible/ad-hoc/k8s.sh`
- Устанавливаем Docker на хостах: `ansible/ad-hoc/docker-install.sh`
- Добавляем в /etc/hosts запись `127.0.0.1 rancher.loc`

## RKE
- Устанавливаем k8s кластер с помощью RKE: `rancher/rke-up.sh`

## Rancher
https://rancher.com/docs/rancher/v2.5/en/installation/install-rancher-on-k8s/#install-the-rancher-helm-chart
<!-- - УСтанавливаем Ingress -->
- Устанавливаем cert-manager rancher/cert-manager.sh
- Install Rancher with Helm