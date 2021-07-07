# Prometheus
- Для установки использовать values.yaml в котором установить: `alertmanager.persistentVolume.enabled = false`, 
`server.persistentVolume.enabled = false`
- Для сбора метрик с ноды в values.yaml секцию serverFiles.prometheus.yml добавить:       
```
- job_name: node
  static_configs:
    - targets: ['localhost:9100']
```
