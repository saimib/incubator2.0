## 1. Create a Pod specification for the metadataservice

```
kubectl create -f pod-definition.yaml
```

![](./Assignment1-task1.png)

## 2. Check the logs

```
kubectl logs -f metadataservice metaservice
```

![](./Assignment1-task2.png)

## 3. Check the Pod IP

```
kubectl describe pod metadataservice
```

![](./Assignment1-task3.png)

## 4. Hit the POD ip with /metadata url path

```
minikube ssh
curl http://10.244.0.3:8080/
```

![](./Assignment1-task4.png)

## 5. Describe the POD

```
kubectl describe pod metadataservice
```

![](./Assignment1-task5.png)

## 6. Exec into the container using /bin/sh command

```
kubectl exec -it metadataservice  /bin/sh
```

![](./Assignment1-task6.png)
