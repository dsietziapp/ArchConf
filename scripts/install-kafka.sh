#!/bin/bash
echo Installing Kafka ...
cd $HOME/environment
#curl https://apache.claz.org/kafka/2.6.0/kafka_2.13-2.6.0.tgz -o kafka_2.13-2.6.0.tgz
aws s3 cp s3://iapp-archconf-workshop/kafka_2.13-2.6.0.tgz kafka_2.13-2.6.0.tgz
tar -xzf kafka_2.13-2.6.0.tgz