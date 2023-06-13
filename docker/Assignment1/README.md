## 1. Start an nginx container, port forward to local and check

```
docker run --name nginx-server -p 8085:80 -d nginx
```

![](./Assignment1-task1.png)

## 2. Check logs

```
docker logs nginx-server
```

![](./Assignment1-task2.png)

## 3. Go inside the container

```
docker exec -it nginx-server bash
```

![](./Assignment1-task3.png)

## 4. Stop the container

```
docker stop nginx-server
```

![](./Assignment1-task4.png)
