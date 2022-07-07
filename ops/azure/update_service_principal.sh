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

SP_ID=$(az aks show --resource-group ${RESOURCE_GROUP} --name ${NAME} --query servicePrincipalProfile.clientId -o tsv)
SP_SECRET=$(az ad sp credential reset --name "$SP_ID" --query password -o tsv)

az aks update-credentials \
    --resource-group $RESOURCE_GROUP \
    --name $NAME \
    --reset-service-principal \
    --service-principal "$SP_ID" \
    --client-secret "$SP_SECRET"
