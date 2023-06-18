## 1. Create NodePort service for the metadataservice and access via nodeport from host machine

```
kubectl create -f replicaset.yaml
kubectl create -f nodeport-service.yaml

kubectl get service
```

![](./Assignment3-task1.png)
![](./Assignment3-task12.png)

## 2. POST to create an meta entry in the database

```
curl --header "Content-Type: application/json" --request POST --data '{"group":"csk","name":"dhoni","value":"high"}' http://172.29.222.221:30000/metadata
```

![](./Assignment3-task2.png)

## 3. GET all meta entry posted

```
curl http://172.29.222.221:30000/metadata
```

![](./Assignment3-task3.png)
