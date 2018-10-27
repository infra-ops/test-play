#!/bin/bash 
set -x 
echo "Deleting ES Discovery Service" 
kubectl delete -f es-discovery-svc.yaml -n logging

echo "Deleting ES Service" 
kubectl delete -f es-svc.yaml -n logging

echo "Deleting ES Master Service" 
kubectl delete -f es-master-svc.yaml -n logging
 
echo "Deleting ES Master Statefulset" -n logging
kubectl delete -f es-master.yaml -n logging
 
echo "Deleting ES Master PVs" 
kubectl delete -f es-master-pv.yaml -n logging
 
#echo "Verify ES Master Rollout Status"
#kubectl rollout status -f es-master.yaml -n logging
echo "Deleting ES Ingest Service"
kubectl delete -f es-ingest-svc.yaml -n logging

echo "Deleting ES Ingest Deployment" 
kubectl delete -f es-ingest.yaml -n logging
#echo "Verify ES Ingest Rollout Status" 
#kubectl rollout status -f es-ingest.yaml -n logging

echo "Deleting ES Data Service" 
kubectl delete -f es-data-svc.yaml -n logging
 
echo "Deleting ES Data PVs" 
kubectl delete -f es-data-pv.yaml -n logging
 
echo "Deleting ES Data Statefulset" 
#kubectl delete -f es-data.yaml -n logging
kubectl delete po/es-data-0 po/es-data-1 po/es-data-2 --force --grace-period=0 -n logging
 
#echo "Verify ES Data Rollout Status" 
#kubectl rollout status -f es-data.yaml -n logging
 
echo "Deleting PVs"
kubectl delete persistentvolumeclaim/storage-es-master-0 persistentvolumeclaim/storage-es-master-1 persistentvolumeclaim/storage-es-master-2 pvc/storage-es-data-0 pvc/storage-es-data-1 pvc/storage-es-data-2 -n logging
 
echo "Deleting Fluent ConfigMap" 
kubectl delete -f fluent-bit-config.yaml -n logging
echo "Deleting Fluend DaemonSet" 
kubectl delete -f fluentd.yaml -n logging
 
echo "Deleting FluentBit DaemonSet" 
kubectl delete -f fluentbit.yaml -n logging
 
echo "Deleting Kibana ConfigMap" 
kubectl delete -f k-config.yaml -n logging
 
echo "Deleting Kibana DaemonSet" 
kubectl delete -f k.yaml -n logging

