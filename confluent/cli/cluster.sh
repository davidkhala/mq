set -e
cluster() {
    confluent kafka cluster create $1
}
$@
