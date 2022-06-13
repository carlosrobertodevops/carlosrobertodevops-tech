#!/bin/bash

USER="carlosrobertodevops"
TIMESTAMP=$(date "+%Y.%m.%d-%H.%M")
APP="optydev-io-xyz"

echo "Construindo a imagem ${USER}/${APP}:${TIMESTAMP} ..."
docker build -t ${USER}/${APP}:${TIMESTAMP} .

echo "Marcando a tag latest também ... "
docker tag ${USER}/${APP}:${TIMESTAMP} ${USER}/${APP}:latest

echo "Enviando a imagem para nuvem docker hub ..."
docker push ${USER}/${APP}:${TIMESTAMP}
docker push ${USER}/${APP}:latest