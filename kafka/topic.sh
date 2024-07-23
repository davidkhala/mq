
list(){
  ${path2kafkaInstallation}/bin/kafka-topics.sh --list --bootstrap-server ${BootstrapServerString} --command-config ${path2kafkaInstallation}/bin/client.properties

}
list-messages(){
  ${path2kafkaInstallation}/bin/kafka-topics.sh --topic $1 --from-beginning --bootstrap-server ${BootstrapServerString} --command-config ${path2kafkaInstallation}/bin/client.properties
}

$@
