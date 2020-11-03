#!/bin/bash
cd $HOME/environment

echo Downloading scripts ...
files=( "install-rust.sh" "install-kafka.sh" "kafka-start.sh" "kafka-stop.sh" "zookeeper-start.sh" "zookeeper-stop.sh" "cleanup.sh" )
for f in "${files[@]}"
do
    :
    aws s3 cp s3://iapp-archconf-workshop/$f $f
    sudo chmod +x $f
done

installs=( "install-rust.sh" "install-kafka.sh" )
for i in "${installs[@]}"
do
    :
    echo "running $i ..."
    ./$i
done

./cleanup.sh

#echo Performing installations ...
#./install-rust.sh
#source $HOME/.cargo/env
#./install-kafka.sh