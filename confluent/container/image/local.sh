# For image `confluentinc/confluent-local`
## See in https://docs.confluent.io/platform/current/installation/docker/config-reference.html#confluent-local-example
set -e

name=confluent-local
start() {
    # assume confluent platform software is installed with default CONFLUENT_HOME
    local CLUSTER_ID=$(curl https://raw.githubusercontent.com/davidkhala/mq/refs/heads/main/confluent/software/cluster.sh | bash -s random-id)
    docker run -d -P --name=$name -e CLUSTER_ID=$CLUSTER_ID confluentinc/confluent-local # -P used to ramdomly map ports

}
$@
