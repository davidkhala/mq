# KRaft Controller

- broker: KRaft Controller is also a Kafka broker
- Controller Quorum need 3 in minimum
- dependency of brokers: Controller 节点需要先部署
  - `process.roles=controller`
  - configure `controller.quorum.voters`

# [Configuration Reference](https://docs.confluent.io/platform/current/installation/configuration/broker-configs.html)
- `unclean.leader.election.enable`: allow replicas not in the ISR set to be elected as leader as a last resort
  - It may result in data loss
- `min.insync.replicas`
- `node.id`: required when in KRaft mode.