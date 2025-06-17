
Topic > [Partition](./partition.md) > [Segment] > [Message](./message.md)

Retention

- Set globally or per topic
- Data purged per segment (when expired)

Delivery Guarantees

- Exactly once: since 2017(spring), kafka 0.11
  - Fundamentally, A transactional API
- At least once
- At most once

Consumer Group

- Balancing: each consumer in one group evenly get message.
  - No duplicated deliver making single consumer getting all messages.
- It doesn't migrate state: user have to remember what messages have come before.
  - Solution: [Kafka Streams](./streams.md) or kSQLDB

No Encryption at Rest out of box

- Solution: Full disk encryption or encrypt in app level
