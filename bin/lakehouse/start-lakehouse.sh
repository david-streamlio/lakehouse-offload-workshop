#!/bin/bash

INFRA_DIR="infra/lakehouse"

docker compose --project-name lakehouse --file $INFRA_DIR/cluster.yaml up -d