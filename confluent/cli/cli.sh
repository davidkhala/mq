set -e
login() {
    confluent login --no-browser
}

$@
