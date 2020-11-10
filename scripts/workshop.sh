#!/bin/bash

WORKSHOP=undefined
# Loop through arguments and process them
for arg in "$@"
do
    case $arg in
        -w|--workshop)
        shift
        WORKSHOP=$*
        ;;
    esac
done

echo "Setting up for the ${WORKSHOP} workshop ..."

cd $HOME/environment

echo Updating yum ...
sudo yum update -y

echo "Downloading shared scripts ..."
files=( "install-rust.sh" "install-kafka.sh" "kafka-start.sh" "kafka-stop.sh" "zookeeper-start.sh" "zookeeper-stop.sh" "resize.sh" "cleanup.sh" )
for f in "${files[@]}"
do
    :
    aws s3 cp s3://iapp-archconf-workshop/$WORKSHOP-workshop/$f ./scripts/$f
    sudo chmod +x ./scripts/$f
done

echo "Downloading ${WORKSHOP} scripts ..."
files=()

if [ ${WORKSHOP} == 'daas' ] 
then
    files=( "curl-hello.sh" "curl-sourcing.sh" "curl-reporting.sh" )
fi

if [ ${WORKSHOP} == 'tdg' ] 
then
    files=()
fi

for f in "${files[@]}"
do
    :
    aws s3 cp s3://iapp-archconf-workshop/$WORKSHOP-workshop/$f ./scripts/$f
    sudo chmod +x ./scripts/$f
done

installs=( "install-rust.sh" "install-kafka.sh" "resize.sh" )
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