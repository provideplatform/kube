# PRVD Kube

*DevOps utils for deploying and managing the PRVD stack using Kubernetes.*

## Prerequisites

You need to have the following installed locally prior to using this package:

- `docker-compose`
- `kompose`
- `kubectl`

## Makefile

A `Makefile` exists to make things easy.

- `make login` logs you into the Azure environment and configures your local `kubectl`
- `make compose` cleans and generates a helm chart under `manifest/`
- `make deploy` deploys the entire stack to the `provide` namespace
