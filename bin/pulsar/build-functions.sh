#!/bin/bash

FUNCTIONS_DIR="functions"
INFRA_DIR="infra/pulsar/functions/lib"

echo "Building the function artifacts"
mvn clean install -f $FUNCTIONS_DIR/pom.xml

values=("user-source")

# Loop over each value
for val in "${values[@]}"; do
  cp $FUNCTIONS_DIR/${val}/target/*.nar $INFRA_DIR/
done
