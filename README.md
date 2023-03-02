# hpe-prometheus-exporter
hpe-prometheus-exporter for monitoring, alerting and metrics.


### Build exporter
```
kustomize build manifests/overlays/dev | k apply -f -
```

### Clean up
```
kustomize build manifests/overlays/dev | k delete -f -
```