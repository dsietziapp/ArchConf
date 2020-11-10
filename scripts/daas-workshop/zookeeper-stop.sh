#!/bin/bash
echo Stopping the ZooKeeper service
cd $HOME/environment/kafka_2.13-2.6.0
bin/zookeeper-server-stop.sh 
rm -rf /tmp/kafka-logs /tmp/zookeeper