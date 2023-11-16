

## Kubernetes Client

```
kubectl config view

kubectl config -kubeconfig=~/.kube/config set-cluster devcluster --server=https://192.xxx.xxx.xxx --certificate-authority=clusterca.crt

kubectl config -kubeconfig=~/.kube/config set-credentials anna --client-certificate=anna.crt --client-key=anna.key

kubectl set-context devcluster --cluster=devcluster --namespace=devspace --user=anna
```


