#!/bin/bash

echo "Starting Apache Pulsar..."
sh ./bin/pulsar/start-pulsar.sh

sleep 5 && echo "Starting Lakehouse..."
sh ./bin/lakehouse/start-lakehouse.sh

sleep 20 && echo "Starting the Lakehouse Offloader..."
sh ./bin/pulsar/start-lakehouse-offloader.sh

# TODO Add source that generates the records.
sleep 10 && echo "Starting the User Generator"
sh ./bin/pulsar/start-user-source.sh
