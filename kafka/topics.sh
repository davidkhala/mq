
list(){
  ${path2kafkaInstallation}/bin/kafka-topics.sh --list --bootstrap-server ${BootstrapServerString} --command-config ${path2kafkaInstallation}/bin/client.properties

}
$@
