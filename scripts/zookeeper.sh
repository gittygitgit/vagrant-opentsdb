#!/bin/bash
<< foo
# create myid file. see http://zookeeper.apache.org/doc/r3.1.1/zookeeperAdmin.html#sc_zkMulitServerSetup
if [ ! -d /tmp/zookeeper ]; then
    echo creating zookeeper data dir...
    mkdir /tmp/zookeeper
    echo $1 > /tmp/zookeeper/myid
fi
# echo starting zookeeper 
$HOME/kafka_2.10-0.9.0.1/bin/zookeeper-server-start.sh /vagrant/config/zookeeper.properties > /tmp/zookeeper.log &
foo

wget http://apache.mirrors.tds.net/zookeeper/current/zookeeper-3.4.10.tar.gz -P /tmp/
pushd /opt
sudo cp /tmp/zookeeper-3.4.10.tar.gz .
sudo tar -zxf zookeeper-3.4.10.tar.gz
pushd zookeeper-3.4.10
sudo mkdir data
sudo rm /opt/zookeeper-3.4.10/conf/zoo.cfg


# Conf file
pushd conf
sudo cat >> zoo.cfg <<CONF
tickTime = 2000
dataDir = /opt/zookeeper-3.4.10/data
clientPort = 2181
initLimit = 5
syncLimit = 2
CONF

popd

bin/zkServer.sh start


