# kcat
- aka. kafkacat
- [source](https://github.com/edenhill/kcat)
  - not official
  - Written in C with librdkafka

usage
- 查看topic: `kcat -b broker:9092 -L`
- 查看partition, offset, metadata
- 消费消息: `kcat -b broker:9092 -t my-topic`
- 生产消息：`echo "hello" | kcat -b broker:9092 -t my-topic`
