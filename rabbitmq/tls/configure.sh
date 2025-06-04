set -e

current=$(pwd)
config_path=/etc/rabbitmq/rabbitmq.conf
adopt() {
    sudo cp ./rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
    git clone https://github.com/rabbitmq/tls-gen
    cd tls-gen/basic
    make
    cd result
    sudo chmod 644 -R $current/tls-gen/basic/result
    sudo mkdir -p /etc/rabbitmq/ssl
    sudo cp ca_certificate.pem /etc/rabbitmq/ssl/ca_certificate.pem
    sudo cp server_localhost.localdomain_certificate.pem /etc/rabbitmq/ssl/server_certificate.pem
    sudo cp server_localhost.localdomain_key.pem /etc/rabbitmq/ssl/server_key.pem
    sudo systemctl restart rabbitmq-server
    cd $current
}

clean() {
    sudo rm -rf $current/tls-gen
    sudo rm $config_path
}
$@
