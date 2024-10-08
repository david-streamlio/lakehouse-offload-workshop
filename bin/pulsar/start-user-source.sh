#!/bin/bash

docker exec -it pulsar-broker sh -c \
  "./bin/pulsar-admin sources create \
    --archive /etc/pulsar-functions/lib/user-source-1.0.0.nar \
    --source-config-file /etc/pulsar-functions/conf/user-source-config.json"