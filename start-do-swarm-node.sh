#!/usr/bin/env bash
docker-machine create --driver digitalocean \
	--digitalocean-access-token $DO_TOKEN \
	--swarm \
	--swarm-discovery="consul://$KEYSTORE_IP:8500" \
	--engine-opt="cluster-store=consul://$KEYSTORE_IP:8500" \
 	--engine-opt="cluster-advertise=eth0:2376" swarm-node-$1
