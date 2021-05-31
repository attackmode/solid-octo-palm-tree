# Kubernetes litecoin statefulset

This can be run locally from the `kubernetes` dir, once the docker image is built, with:

```
kubectl apply -f litecoin
```

There is also a Gitlab ci file which will create the runner. Would be better use Flux for this deployment, but have built for all purposes of the task.