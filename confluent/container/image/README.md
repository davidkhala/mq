[Docker Image Reference](https://docs.confluent.io/platform/current/installation/docker/image-reference.html)
# Container Images 
`cp-kafka`: includes **community version** of Kafka.
`cp-server`: `cp-kafka` + commercial features(RBAC, self-balancing clusters, Confluent Rest Proxy, Tiered Storage)
`confluent-local`: `cp-kafka` + `cp-kafka-rest`
- Defaults to running in KRaft **combined mode**.
- requires no configuration to start using it
- > Combined mode is **not** supported for production
- ports
    - `8082`: Kafka Rest Proxy
    - `9092`: Kafka