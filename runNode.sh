#!/bin/bash
#RUN ONE TYPE OF NODE
sudo docker pull nogueiradalmeida/rbbnode:v0.01
echo NODE $1
cd node$1
if [ $2 = "clear" ]; then
    echo 'Cleaning... '
    cd data
    sudo rm -rf besu.networks
    sudo rm -rf besu.ports
    sudo rm -rf caches
    sudo rm -rf database
    sudo rm -rf DATABASE_METADATA.json
    sudo rm -rf uploads
    cd ..
fi
sudo docker run --network=host -v ./node$1/:/conf/local -v ./node$1/data:/conf/data rbb_bootnode:latest