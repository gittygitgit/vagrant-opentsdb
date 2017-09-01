#!/bin/bash

wget https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-4.4.3-1.x86_64.rpm
yes|sudo yum -y install initscripts fontconfig urw-fonts
yes|sudo rpm -Uvh grafana-4.4.3-1.x86_64.rpm

