set -e

up() {
    export CLUSTER_ID=$(curl https://raw.githubusercontent.com/davidkhala/mq/refs/heads/main/confluent/software/cluster.sh | bash -s random-id)
    echo "Using CLUSTER_ID: $CLUSTER_ID"
    CLUSTER_ID=$CLUSTER_ID docker compose up -d
}
$@
