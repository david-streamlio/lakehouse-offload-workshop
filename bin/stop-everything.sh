#!/bin/bash

docker compose --project-name pulsar down --volumes

docker compose --project-name lakehouse down --volumes

docker network rm lakehouse-network
