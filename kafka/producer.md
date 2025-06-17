Producer Guarantees

- Acks 0 (None): throw without catch
- Acks 1 (Leader): when leader confirm
- Acks -1 (All): when all living replicas confirm

Idempotence Producer
- `enable.idempotence=true`
- implemented by sequence(seq) number