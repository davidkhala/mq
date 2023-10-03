# Ref: https://docs.confluent.io/operator/current/co-quickstart.html#quick-start-using-kraft
# Prepare
# - Have the Kubernetes clusters. Kubernetes versions 1.22+ are required.



k8sNamespace=${namespace:-confluent}
prepare-gke() {
  clusterName=${cluster:-confluent}
  region=${region:-asia-east2}
  # default n2-standard-4 quota is 8 vcpus. Need to request
  gcloud container clusters create ${clusterName} --machine-type n2-standard-4 --disk-type pd-standard --num-nodes 3 --region $region
  gcloud container clusters get-credentials ${clusterName} --region $region
}
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
