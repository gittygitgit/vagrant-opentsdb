#!/bin/bash

wget http://apache.mirrors.tds.net/hbase/stable/hbase-1.2.6-bin.tar.gz -P /tmp/

pushd /opt
sudo cp /tmp/hbase-1.2.6-bin.tar.gz .
sudo tar xzvf hbase-1.2.6-bin.tar.gz
pushd hbase-1.2.6/conf

sudo cat >> hbase-env.sh << EOF
export JAVA_HOME=/usr/local/java/jdk
EOF

sudo cat > hbase-site.xml << EOF
<configuration>
  <property>
    <name>hbase.rootdir</name>
    <value>/opt/hbase-1.2.6/hbase</value>
  </property>
  <property>
    <name>hbase.zookeeper.property.dataDir</name>
    <value>/opt/zookeeper-3.4.10/data</value>
  </property>
  <property>
    <name>hbase.table.sanity.checks</name>
    <value>false</value>
  </property>
</configuration>
EOF

