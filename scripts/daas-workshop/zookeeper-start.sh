#!/bin/bash
echo Starting the ZooKeeper service
cd $HOME/environment/kafka_2.13-2.6.0
bin/zookeeper-server-start.sh config/zookeeper.properties