#!/bin/bash

wget https://github.com/OpenTSDB/opentsdb/releases/download/v2.3.0/opentsdb-2.3.0.tar.gz -P /tmp

sudo mkdir /opt/opentsdb
pushd /opt/opentsdb
sudo cp /tmp/opentsdb-2.3.0.tar.gz .
sudo tar -xzvf opentsdb-2.3.0.tar.gz
pushd opentsdb-2.3.0

