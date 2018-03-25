#!/bin/bash

set -e -u -x
chmod +x MUMWebStore-git/ci/tasks/package.sh
chmod +x MUMWebStore-git/mvnw
cd MUMWebStore-git/
./mvnw package