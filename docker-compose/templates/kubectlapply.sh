kubectl apply -f ./ident-consumer-deployment.yaml
kubectl apply -f ./ident-deployment.yaml
kubectl apply -f ./ident-service.yaml
kubectl apply -f ./nats-claim0-persistentvolumeclaim.yaml
kubectl apply -f ./nats-deployment.yaml
kubectl apply -f ./nats-service.yaml
kubectl apply -f ./nats-streaming-claim0-persistentvolumeclaim.yaml
kubectl apply -f ./nats-streaming-deployment.yaml
kubectl apply -f ./postgres-deployment.yaml
kubectl apply -f ./postgres-service.yaml
kubectl apply -f ./redis-deployment.yaml
kubectl apply -f ./redis-service.yaml
kubectl apply -f ./vault-db-persistentvolumeclaim.yaml
kubectl apply -f ./vault-deployment.yaml
kubectl apply -f ./vault-networkpolicy.yaml
kubectl apply -f ./vault-service.yaml