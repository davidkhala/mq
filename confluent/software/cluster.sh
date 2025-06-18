set -e

random-id() {
    if [ -z "$CONFLUENT_HOME" ]; then
        docker run -q confluentinc/cp-kafka /bin/kafka-storage random-uuid
    else        
        $CONFLUENT_HOME/bin/kafka-storage random-uuid
    fi
    
}
$@
