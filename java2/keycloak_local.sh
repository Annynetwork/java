#! /bin/bash

minikube addons list
minikube addons enable ingress
kubectl apply -f keycloak.yaml
