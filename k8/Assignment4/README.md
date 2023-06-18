## 1. Deploy new Pod using mongodb image

```
kubectl create -f mongo-pod.yaml
```

![](./Assignment4-task1.png)

## 2. Create ClusterIP service for mongodb with service name mongo

```
kubectl create -f mongo-service.yaml
```

![](./Assignment4-task2.png)

## 3. Change image in MetadataService, pass mongo connection URI as env variable

```
kubectl create -f replicaset.yaml
kubectl create -f nodeport-service.yaml
```

![](./Assignment4-task3.png)

## 4. Try again POST and GET for metadataservice

```
 curl --header "Content-Type: application/json" --request POST --data '{"group":"csk","name":"dhoni","value":"high"}' http://172.29.222.221:30000/metadata

 curl --header "Content-Type: application/json" --request POST --data '{"group":"csk","name":"raina","value":"medium"}' http://172.29.222.221:30000/metadata
```

![](./Assignment4-task4.png)

```
curl http://172.29.222.221:30000/metadata
```

![](./Assignment3-task3.png)
