#!/bin/sh
echo Starting the Kafka broker service
cd $HOME/environment/kafka_2.13-2.6.0
bin/kafka-server-start.sh config/server.properties