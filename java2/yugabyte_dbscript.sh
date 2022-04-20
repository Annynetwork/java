#! /bin/bash

kubectl create namespace yb-demo
helm install yb-demo yugabytedb/yugabyte \
--set resource.master.requests.cpu=0.5,resource.master.requests.memory=0.5Gi,\
resource.tserver.requests.cpu=0.5,resource.tserver.requests.memory=0.5Gi,\
replicas.master=2,replicas.tserver=2 --namespace yb-demo
kubectl port-forward svc/yb-master-ui -n yb-demo 31361:7000 &
kubectl port-forward svc/yb-masters -n yb-demo 7100:7100 &
kubectl port-forward svc/yb-tserver-service -n yb-demo 31365:5433 &
kubectl port-forward svc/yb-tservers -n yb-demo 9000:9000 &
