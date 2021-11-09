#!/bin/sh
echo Stopping the Kafka broker service
cd $HOME/environment/kafka_2.13-2.6.0
bin/kafka-server-stop.sh