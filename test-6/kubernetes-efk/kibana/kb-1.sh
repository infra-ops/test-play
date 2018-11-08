kubectl create -f kibana-new.yaml 
kubectl create -f kibana-svc.yaml 
kubectl get pods,svc -o wide
