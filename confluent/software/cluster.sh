export CONFLUENT_HOME=$HOME/confluent/confluent-7.9.1
set -e

random-id() {
    $CONFLUENT_HOME/bin/kafka-storage random-uuid
}
$@
