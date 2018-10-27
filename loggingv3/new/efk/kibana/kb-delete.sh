kubectl delete -f  kibana-cm.yaml  -n logging
kubectl delete -f kibana-deployment.yaml -n logging
kubectl delete -f  kibana-svc.yaml -n logging

