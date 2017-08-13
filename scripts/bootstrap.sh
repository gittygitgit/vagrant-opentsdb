#!/bin/bash

#yes|sudo yum install nc
#yes|sudo yum install telnet

cat > /etc/profile << EOF
export ZK_HOME=/opt/zookeeper-3.4.10
export HBASE_HOME=/opt/hbase-1.2.6

alias zk="cd ${ZK_HOME}"
alias hb="cd ${HBASE_HOME}"
alias zkbin="cd ${ZK_HOME}/bin"
alias hbbin="cd ${HBASE_HOME}/bin"
alias stophb="cd ${HBASE_HOME}/bin;sudo ./stop-hbase.sh"
alias starthb="cd ${HBASE_HOME}/bin;sudo ./start-hbase.sh"

EOF

