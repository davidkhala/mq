# Confluent Replicator
Improves the Kafka MirrorMaker
- Can also mirror some metadata
- Solve some offset translation problem (by a lib embedded in Java app)

# Intelligent Replication
The next generation of [Cluster Linking](https://github.com/davidkhala/mq/blob/main/kafka/admin/cluster.md) and Confluent Replicator
- not available on Confluent Cloud UI 
- Active-active
  - 双向复制 with conflict resolver (CRDT)
- beyond topic replication, IR also replicate
  - schema
  - ACL
  - topic-level metadata. including 自动处理partition不一致的情况
  - Consumer group metadata. including offset
  - Transaction metadata. Ensure exactly-once
  - Cluster-level metadata
- replicate cross cloud
- replicate cross kafka version
