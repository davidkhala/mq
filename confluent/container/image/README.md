
# Container Images 
`cp-kafka`: includes Kafka.
`cp-server`: `cp-kafka` + RBAC, self-balancing clusters, etc.
`confluent-local`: `cp-kafka` + Confluent Rest Proxy
- Defaults to running in KRaft **combined mode**.
- requires no configuration to start using it
- > Combined mode is not supported for production