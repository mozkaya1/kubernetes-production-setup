
kubectl create clusterrolebinding prometheus-kubelet-binding \
  --clusterrole=prometheus-kubelet-scraper \
  --serviceaccount=default:default \
  --dry-run=client -o yaml | kubectl apply -f -



echo  "Checking binding ..."

kubectl get clusterrolebinding prometheus-kubelet-binding
