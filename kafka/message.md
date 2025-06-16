
Data elements

1. headers: optional
2. Key: optional. 主要用于决定消息写入哪个partition（via mod(hash(key))）. If not specified, record will be sent in a round-robin way for the next partition
3. Value
3. timestamp

Each message in a Segment (like a log) identified by Offset
