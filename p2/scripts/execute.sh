kubectl apply -f app1/deployment-app1.yaml
kubectl apply -f app1/service-app1.yaml

kubectl apply -f app2/deployment-app2.yaml
kubectl apply -f app2/service-app2.yaml

kubectl apply -f app3/deployment-app3.yaml
kubectl apply -f app3/service-app3.yaml

kubectl apply -f ingress.yaml

