kubectl delete -f  es-data.yaml -n logging
kubectl delete -f es-discovery-svc.yaml -n logging
kubectl delete -f es-master.yaml -n logging
kubectl delete -f es-svc.yaml -n logging

