#!/usr/bin/env bash
docker-machine created --driver digitalocean \
	--digitalocean-access-token $DO_TOKEN \
	keystore
docker $(docker-machine config keystore) run -p 8500:8500 -h consul progrium/consul -server -bootstrap
