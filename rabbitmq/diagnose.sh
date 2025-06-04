set -e
endpoints() {
    rabbitmq-diagnostics listeners
}
$@
