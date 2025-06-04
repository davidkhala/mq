Default User Access

- user `guest` with password `guest`
- > By default, these credentials can only be used when connecting to the broker as localhost

## Configuration file
>
> RabbitMQ packages or nodes will not create any configuration files. Users and deployment tool should use the following locations when creating the files

- Linux: `/etc/rabbitmq/rabbitmq.conf`
- Windows: `%APPDATA%\RabbitMQ\rabbitmq.conf`
- mac(homebrew): `/usr/local/etc/rabbitmq/rabbitmq.conf`

Configuration file changes take effect after a node restart.
