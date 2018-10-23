kubectl delete -f ../es-discovery-svc.yaml   -n logging
kubectl delete -f ../es-svc.yaml    -n logging

kubectl delete -f ../es-master-svc.yaml  --force --grace-period=0   -n logging
kubectl delete -f ../es-master.yaml    --force --grace-period=0 -n logging
kubectl delete -f ../es-master-pv.yaml   --force --grace-period=0  -n logging

kubectl delete -f ../es-data-svc.yaml   -n logging
kubectl delete -f ../es-data-pv.yaml   -n logging
#kubectl delete -f ../es-data.yaml   --force --grace-period=0 -n logging  

kubectl delete po/es-data-0 -n logging
kubectl delete po/es-data-1 -n logging
kubectl delete po/es-data-2 -n logging

kubectl delete   statefulsets/es-data  --force --grace-period=0 -n logging


kubectl delete -f ../es-ingest-svc.yaml  --force --grace-period=0   -n logging
kubectl delete -f ../es-ingest.yaml   --force --grace-period=0      -n logging


