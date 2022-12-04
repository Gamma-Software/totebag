#!/bin/bash
if [ $(echo $1 | jq -r '.heartbeat.status') = "0" ]; then
    echo "Home Assistant is offline"
    #docker run -d --name homeassistant --privileged --restart=unless-stopped -e TZ=Europe/Paris -v /mnt/data/workspace/boilerplates/docker-compose/homeassistant/config:/config --network=host ghcr.io/home-assistant/home-assistant:stable
    docker start homeassistant
    exit 0
else
    echo "Home Assistant is online"
    #docker rm homeassistant --force | true
    docker stop homeassistant
    exit 0
fi