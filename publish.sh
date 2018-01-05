#!/usr/bin/env bash

registry=azureclidev
server=`az acr show -n $registry --query 'loginServer' -otsv`
version=$(cat ./version)
image=$server/a01store:$version


az acr login -n $registry
docker build -t $image .
docker push $image

image_latest=$server/a01store:latest 
docker tag $image $image_latest
docker push $image_latest
docker rmi $image_latest