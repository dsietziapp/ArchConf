#!/bin/bash
cd $HOME/environment

echo Downloading scripts ...
aws s3 cp s3://iapp-archconf-workshop/install-rust.sh
aws s3 cp s3://iapp-archconf-workshop/install-kafka.sh
aws s3 cp s3://iapp-archconf-workshop/kafka-start.sh
aws s3 cp s3://iapp-archconf-workshop/kafka-stop.sh
aws s3 cp s3://iapp-archconf-workshop/zookeeper-start.sh
aws s3 cp s3://iapp-archconf-workshop/zookeeper-stop.sh
sudo chmod +x install-rust.sh
sudo chmod +x install-kafka.sh
sudo chmod +x kafka-start.sh
sudo chmod +x kafka-stop.sh
sudo chmod +x zookeeper-start.sh
sudo chmod +x zookeeper-stop.sh

echo Performing installations ...
./install-rust.sh
source $HOME/.cargo/env
./install-kafka.sh