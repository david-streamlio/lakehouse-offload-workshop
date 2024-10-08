#!/bin/bash

docker exec -it pulsar-broker sh -c \
  "./bin/pulsar-admin sinks create \
    --archive /etc/pulsar-functions/lib/pulsar-io-lakehouse-3.3.1.7-cloud.nar \
    --sink-config-file /etc/pulsar-functions/conf/iceberg-config.yaml"