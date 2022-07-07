#!/bin/bash

if [ -z "${NAMESPACE}"]; then
  NAMESPACE=provide
fi

pods=$($(which kubectl) get pods --namespace $NAMESPACE --output name | sed 's/pod\///')

for pod in $pods ; do
  $(which kubectl) logs "$pod" --namespace $NAMESPACE --prefix=true
done
