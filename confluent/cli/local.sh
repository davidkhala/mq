export CONFLUENT_HOME=$HOME/confluent/confluent-7.9.1

start() {
    confluent local services start
}
kafka() {
    confluent local kafka $@ # start | stop | status
}
connect() {
    confluent local services connect $@ # start | stop | status
}
rest() {
    confluent local services kafka-rest $@ # start | stop | status
}
controller() {
    confluent local services kraft-controller $@ # start | stop | status
}
configure-global() {
    confluent local kafka cluster configuration update --config $@
}
stop() {
    confluent local services stop
}
status() {
    confluent local services status
}

$@
