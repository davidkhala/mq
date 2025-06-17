1. Producers **always** write to the leader
2. Followers replicate from the leader
3. Consumers **typically** read from the leader

# In-Sync Replica (ISR)
A list of replica that have fully caught up with the leader
- When all green, all of replicas will be part of ISR list

## High Watermark: sequence # of committed messages
highest offset that has been successfully replicated to all ISR of a partition.
- Consumers can only read messages below the High Watermark, ensuring they only get fully replicated data.
- When a broker recovers, it will truncate any data beyond (overflow) the high watermark to maintain consistency.
# Preferred Replica
Balancing: To offload leaders workload


# Geo Replication
- By [Confluent Multi-Region Cluster](../confluent/cluster.md#multi-region-cluster)
- By [Kafka MirrorMaker] / [Confluent Replicator] for remote far apart regions
- By [Confluent Cluster Linking]
## Kafka MirrorMaker
Copy the data from source to target
- The offset cannot be reserved
    - If you have a consumer app that want to failover, you need to translate offset manually
