#! /bin/bash

minikube addons list
minikube addons enable ingress
kubectl create -f https://raw.githubusercontent.com/keycloak/keycloak-quickstarts/latest/kubernetes-examples/keycloak.yaml


