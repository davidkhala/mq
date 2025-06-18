# Confluent Rest Proxy

https://developer.confluent.io/get-started/rest/

https://docs.confluent.io/platform/current/kafka-rest/api.html


# Compared to Kafka Rest Proxy
- > REST that runs with a Confluent Server deployment provides the full set of REST APIs. 
    - > all paths should be prefixed with /kafka as opposed to Standalone REST Proxy.
    - `/kafka/v3/clusters`
    - > Confluent Server provides an embedded instance of these APIs on the Kafka brokers.
    - > The embedded APIs run on the Confluent HTTP service, `confluent.http.server.listeners`
    - > (TODO) Metadata Server (MDS) is also running on the Confluent HTTP service, as another endpoint available to you with additional configurations.
- > REST that runs in a Standalone deployment consists of the open-source Kafka REST APIs only. 
    - TODO: what are the diff?
    - `/v3/clusters`