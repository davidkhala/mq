
list(){
  ${path2kafkaInstallation}/bin/kafka-consumer-groups.sh --list --bootstrap-server ${BootstrapServerString} --command-config ${path2kafkaInstallation}/bin/client.properties

}
$@
