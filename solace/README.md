# localhost Docker
- port 8080: Use this port when configuring the message broker container with Solace PubSub+ Broker Manager.
- port 55555: Your applications can use Solace APIs to connect to the message broker on this port.
   - Note that for Mac users we are mapping port 55554 to the default Solace SMF port of 55555 because Mac OS now reserves port 55555.
- port 8008: pass Web Messaging traffic through the message broker. Use with js-sdk
- ports 1883 & 8000 : Ports for MQTT connectivity, over TCP and over WebSockets respectively
- port 5672 : AMQP 1.0 applications using Apache QPID APIs would connect here
- port 9000 : RESTful API port
- port 2222 : Use SSH to connect to the Solace Command Line Interface (CLI) for advanced configuration