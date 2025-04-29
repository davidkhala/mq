set -e
login() {
    # Interactive
    confluent login --no-browser
}
profiles() {
    confluent context list
}

$@
