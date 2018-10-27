kubectl delete po/es-data-0 -n logging
kubectl delete po/es-data-1 -n logging
kubectl delete po/es-data-2 -n logging

kubectl delete   statefulsets/es-data  --force --grace-period=0 -n logging

