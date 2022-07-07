#!/bin/bash

if [ -z "${MANIFEST_PATH}" ]; then
  MANIFEST_PATH=./manifest
fi

if [ -z "${NAMESPACE}" ]; then
  NAMESPACE=provide
fi

$(which kubectl) create namespace $NAMESPACE || true

for manifest in ${MANIFEST_PATH}/templates/* ; do
  $(which kubectl) apply -f "$manifest" --namespace $NAMESPACE
done
