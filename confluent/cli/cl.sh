# TODO
# Confluent Cluster Link
create() {
    confluent kafka link create $@
}
mirror-topic() {
    confluent kafka mirror create $@
}
$@
