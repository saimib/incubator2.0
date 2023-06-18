## 1 . Create ReplicaSet for the MetadataService and deploy in K8 cluster

```
kubectl create -f replicaset.yaml
```

![](./Assignment2-task1.png)

## 2 . Add livelinessProbe and readinessProbe using spring actuator's /actuator/health endpoint

```
kubectl describe pod metadataservice-replicaset-796cg
```

![](./Assignment2-task2.png)

## 3. Post to create a meta entry in the database

```
minikube ssh

curl --header "Content-Type: application/json" --request POST --data '{"group":"csk","name":"dhoni","value":"high"}' http://10.244.0.4.:8080/metadata
```

![](./Assignment2-task3.png)

## 4. Get all meta entry posted

```
minikube ssh

curl http://10.244.0.4:8080/metadata

```

![](./Assignment2-task4.png)
