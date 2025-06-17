set -e
list() {
  ${path2kafkaInstallation}/bin/kafka-consumer-groups.sh --list --bootstrap-server ${BootstrapServerString} --command-config ${path2kafkaInstallation}/bin/client.properties

}
describe() {
  ${path2kafkaInstallation}/bin/kafka-consumer-groups.sh --describe --group $1 --bootstrap-server ${BootstrapServerString} --command-config ${path2kafkaInstallation}/bin/client.properties
}

$@
