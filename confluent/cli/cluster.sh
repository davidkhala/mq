set -e
create() {
    confluent kafka cluster create $@
}
create-aws-free() {
    local region="us-west-2" # us-east-1 | us-east-2
    local cluster=$1
    shift 1
    create $cluster --cloud aws --region $region $@
}
create-azure-free() {
    local region="eastus" # eastus2 | westus2
    local cluster=$1
    shift 1
    create $cluster --cloud azure --region $region $@
}
create-gcp-free() {
    local region="us-central1" # us-east1 | us-west1 | us-east4
    local cluster=$1
    shift 1
    create $cluster --cloud gcp --region $region $@
}
list() {
    confluent kafka cluster list $@
}
find() {
    list -o json | jq -r '.[] | select(.name == "'$1'") | .id'
}
delete() {
    local id=$(find $1)
    shift 1
    confluent kafka cluster delete $id --force $@
}

$@
