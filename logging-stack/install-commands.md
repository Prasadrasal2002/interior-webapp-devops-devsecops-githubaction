# Add Loki Helm repo
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

# Install Loki
helm install loki grafana/loki-stack --namespace loki-stack --create-namespace -f loki-values.yaml

# Install Promtail
helm install promtail grafana/promtail --namespace loki-stack -f promtail-values.yaml

# Install Grafana
helm install loki-grafana grafana/grafana --namespace loki-stack -f grafana-values.yaml
