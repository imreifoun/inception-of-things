kubectl apply -f ../confs/app1/deployment-app1.yaml
kubectl apply -f ../confs/app1/service-app1.yaml

kubectl apply -f ../confs/app2/deployment-app2.yaml
kubectl apply -f ../confs/app2/service-app2.yaml

kubectl apply -f ../confs/app3/deployment-app3.yaml
kubectl apply -f ../confs/app3/service-app3.yaml

kubectl apply -f ../confs/ingress.yaml

