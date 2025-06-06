set -e

namespace=confluent
export TUTORIAL_HOME="https://raw.githubusercontent.com/confluentinc/confluent-kubernetes-examples/master/quickstart-deploy/kraft-quickstart"
up() {
    # FIXME this fails on crc
    oc create namespace $namespace
    oc config set-context --current --namespace $namespace
    helm repo add confluentinc https://packages.confluent.io/helm
    helm repo update
    helm upgrade --install confluent-operator confluentinc/confluent-for-kubernetes
    oc apply -f $TUTORIAL_HOME/confluent-platform-c3++.yaml
    # Install the sample producer app and topic
    oc apply -f $TUTORIAL_HOME/producer-app-data.yaml
    
}
status() {
    oc get pods
    oc get services
    oc get statefulsets
}
down() {
    oc delete -f $TUTORIAL_HOME/producer-app-data.yaml
    oc delete -f $TUTORIAL_HOME/confluent-platform-c3++.yaml
    helm uninstall confluent-operator
    oc delete namespace $namespace
}
$@
