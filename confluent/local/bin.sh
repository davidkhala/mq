set -e
export CONFLUENT_HOME=$HOME/confluent/
mkdir -p $CONFLUENT_HOME

install() {
    local community_edition=$1
    
    if [ -z "$community_edition" ]; then
        name=confluent-community-7.9.1.tar.gz
    else
        name=confluent-7.9.1.tar.gz
    fi
    cd $CONFLUENT_HOME
    curl -O https://packages.confluent.io/archive/7.9/$name
    tar xzf $name
    rm $name

}
$@
