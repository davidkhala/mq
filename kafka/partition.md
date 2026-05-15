# Partition
- > (consider partition as) 1...n log files
- 1 log file -> 1 Segment
- 每个Partition是一个有序的消息队列
- Topic 的物理分片

## Limit
一个 partition 只能被同一个 consumer group 中的一个 consumer 实例消费。
- 多出来的 consumers 会变成 闲置（idle）, 吞吐量不会再提升
