#!/bin/bash

set -e -u -x
echo MUMWebStore-git/
cd MUMWebStore-git/
chmod +x ci/tasks/package.sh
./mvnw package