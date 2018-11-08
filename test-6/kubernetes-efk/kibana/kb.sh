kubectl create -f  kibana-cm.yaml  -n logging
kubectl create -f kibana-deployment.yaml -n logging
kubectl create -f  kibana-svc.yaml -n logging

