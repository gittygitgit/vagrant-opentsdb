#!/bin/bash

sudo mkdir /usr/local/java
pushd /usr/local/java
sudo cp /vagrant/resources/jre-8u144-linux-x64.tar.gz .
sudo tar -xzvf jre-8u144-linux-x64.tar.gz 
sudo rm jre-8u144-linux-x64.tar.gz
sudo ln -sfv /usr/local/java/jre1.8.0_144 /usr/local/java/jdk
sudo rm /etc/profile.d/java.sh
if [ ! -f /etc/profile.d/java.sh ]; then
  cat >> /etc/profile.d/java.sh << JAVA_PROFILE

  export PATH="$PATH:/usr/local/java/jdk/bin"
  export JAVA_HOME=/usr/local/java/jdk
JAVA_PROFILE
fi

source /etc/profile.d/java.sh

