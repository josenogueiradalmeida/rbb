#!/bin/bash
#RUN ONE TYPE OF NODE

TAG=v0.01

if [[ $# -eq 0 ]] ; then
    echo 'informe o tipo de no desejado: boot, validator ou regular'
    exit 0
fi

sudo docker pull nogueiradalmeida/rbbnode:$TAG
echo NODE $1
cd node$1
if [ "$2" = "clear" ]; then
    echo 'Apagando dados antigos... '
    cd data
    sudo rm -rf besu.networks
    sudo rm -rf besu.ports
    sudo rm -rf caches
    sudo rm -rf database
    sudo rm -rf DATABASE_METADATA.json
    sudo rm -rf uploads
    cd ..
fi
sudo docker run --network=host -v $PWD/:/conf/local -v $PWD/data:/conf/data nogueiradalmeida/rbbnode:$TAG