# Ref: https://docs.confluent.io/operator/current/co-quickstart.html#quick-start-using-kraft

start() {
  kubectl create namespace confluent
  kubectl config set-context --current --namespace confluent
  helm repo add confluentinc https://packages.confluent.io/helm
  helm repo update
  helm upgrade --install confluent-operator confluentinc/confluent-for-kubernetes --set kRaftEnabled=true

  kubectl apply -f https://raw.githubusercontent.com/confluentinc/confluent-kubernetes-examples/master/quickstart-deploy/kraft-quickstart/confluent-platform.yaml
  kubectl apply -f https://raw.githubusercontent.com/confluentinc/confluent-kubernetes-examples/master/quickstart-deploy/kraft-quickstart/producer-app-data.yaml

}
port-expose() {
  kubectl port-forward controlcenter-0 9021:9021
}
stop() {
  kubectl delete -f https://raw.githubusercontent.com/confluentinc/confluent-kubernetes-examples/master/quickstart-deploy/kraft-quickstart/producer-app-data.yaml
  kubectl delete -f https://raw.githubusercontent.com/confluentinc/confluent-kubernetes-examples/master/quickstart-deploy/kraft-quickstart/confluent-platform.yaml
  helm uninstall confluent-operator
  kubectl delete namespace confluent
}
