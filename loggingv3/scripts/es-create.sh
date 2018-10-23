kubectl create -f ../es-discovery-svc.yaml -n logging
kubectl create -f ../es-svc.yaml -n logging

kubectl create -f ../es-master-svc.yaml -n logging
kubectl create -f ../es-master.yaml -n logging
kubectl create -f ../es-master-pv.yaml -n logging



kubectl create -f ../es-data-svc.yaml -n logging
kubectl create -f ../es-data-pv.yaml -n logging
#kubectl create -f ../es-data.yaml  -n logging 
sleep 5

kubectl create -f ../es-ingest-svc.yaml -n logging
kubectl create -f ../es-ingest.yaml -n logging


