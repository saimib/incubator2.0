## 1. Create a volume, call it my_volume

```
docker volume create my_volume
```

## 2. Create container and attach my_volume

```
docker run -d -v my_volume:/opt/volume --name container1 ubuntu sleep 1000
```

## 3. Change something in the volume folder

```
docker exec -it container1 bash
```

```
echo "hello world" > file.txt
```

## 4. Create a second container mounted with same volume and check

```
docker run -d -v my_volume:/opt/volume --name container2 ubuntu sleep 1000

docker exec -it container2 bash
```

![](./Assingment4-task1.png)
