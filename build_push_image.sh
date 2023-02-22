#!/bin/sh

docker build --tag item-app:v1 .

docker images

docker tag item-app:v1 rosyid/item-app:v1

echo $PASSWORD_DOCKER_HUB | docker login -u rosyid --password-stdin

docker push rosyid/item-app:v1
