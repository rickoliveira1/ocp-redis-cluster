#!/bin/bash

#NODE1_IP=$(/usr/bin/getent hosts redis-cluster-node01 | awk {' print $1 '})
#NODE2_IP=$(/usr/bin/getent hosts redis-cluster-node02 | awk {' print $1 '})
#NODE3_IP=$(/usr/bin/getent hosts redis-cluster-node03 | awk {' print $1 '})
NODE1="redis-cluster-node01:6379"
NODE2="redis-cluster-node02:6379"
NODE3="redis-cluster-node03:6379"

sleep 90

/usr/local/bin/redis-trib.rb create $NODE1 $NODE2 $NODE3
echo RICARDO
exit 0
