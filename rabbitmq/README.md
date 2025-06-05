
Default User Access

- user `guest`
- password `guest`
- > By default, these credentials can only be used when connecting to the broker as localhost

ports

- 4369：[Internal] Used for Erlang Port Mapper Daemon (epmd)
  - epmd supports cluster nodes DNS and discovery
- 5672: amqp
- 5671: amqps
- 15691: Prometheus endpoint (tls)
- 15692: Prometheus endpoint
- 25672: [Internal] Used for cluster node communication

## Configuration file
>
> RabbitMQ packages or nodes will not create any configuration files. Users and deployment tool should use the following locations when creating the files

- Linux: `/etc/rabbitmq/rabbitmq.conf`
- Windows: `%APPDATA%\RabbitMQ\rabbitmq.conf`
- mac(homebrew): `/usr/local/etc/rabbitmq/rabbitmq.conf`

Configuration file changes take effect after a node restart.
