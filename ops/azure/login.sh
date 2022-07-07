#!/bin/bash

if [ -z "${NAME}"]; then
  NAME= # azure --name
fi

if [ -z "${RESOURCE_GROUP}"]; then
  RESOURCE_GROUP= # azure --resource-group
fi

if [ -z "${SUBSCRIPTION}"]; then
  SUBSCRIPTION= # azure --subscription
fi

az login && \
az aks get-credentials --name $NAME \
                       --resource-group $RESOURCE_GROUP \
                       --subscription $SUBSCRIPTION
