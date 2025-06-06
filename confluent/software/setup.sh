set -e
export CONFLUENT_HOME=$HOME/confluent/confluent-7.9.1
mkdir -p $CONFLUENT_HOME

install() {
    local community_edition=$1

    if [ -z "$community_edition" ]; then
        name=confluent-7.9.1.tar.gz
    else
        name=confluent-community-7.9.1.tar.gz
    fi
    cd $(dirname $CONFLUENT_HOME)
    wget https://packages.confluent.io/archive/7.9/$name
    tar xzf $name
    rm $name
    if [ -n "$community_edition" ]; then
        # > Confluent Platform installation packages include the Confluent CLI
        $CONFLUENT_HOME/bin/confluent --version
    fi
}
uninstall() {
    rm -rf $CONFLUENT_HOME
}
$@
