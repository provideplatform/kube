#!/bin/bash

if [ -z "${DOCKER_COMPOSE}" ]; then
  DOCKER_COMPOSE=docker-compose.yml
fi

if [ -z "${MANIFEST_PATH}" ]; then
  MANIFEST_PATH=./manifest
fi

mkdir -p "${MANIFEST_PATH}"
$(which kompose) convert --file "${DOCKER_COMPOSE}" --out "${MANIFEST_PATH}" -c

# if [[ $DOCKER_COMPOSE == "docker-compose.yml" ]]; then
#   # HACK!
#   sed -i '' 's/100Mi/250Gi/' "${MANIFEST_PATH}/templates/provide-db-persistentvolumeclaim.yaml"
# fi

echo "# 🚀" > "${MANIFEST_PATH}/README.md"
