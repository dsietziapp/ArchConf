#!/bin/bash
cd $HOME/environment

echo Updating yum ...
sudo yum update -y

echo Downloading scripts ...
files=( "install-rust.sh" "install-kafka.sh" "kafka-start.sh" "kafka-stop.sh" "zookeeper-start.sh" "zookeeper-stop.sh" "resize.sh" "cleanup.sh" )
for f in "${files[@]}"
do
    :
    aws s3 cp s3://iapp-archconf-workshop/$f ./scripts/$f
    sudo chmod +x ./scripts/$f
done

installs=( "install-rust.sh" "install-kafka.sh" )
for i in "${installs[@]}"
do
    :
    echo "running $i ..."
    ./scripts/$i
done

./scripts/cleanup.sh

#echo Performing installations ...
#./install-rust.sh
# echo | source $HOME/.cargo/env
#./install-kafka.sh