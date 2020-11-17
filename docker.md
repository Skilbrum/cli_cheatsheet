# Docker

### All container list
```docker ps -a```

### All images
```docker images```

### Load image
```docker load -i filename.tar```

### Rename image with version
```
docker tag old_name new_name:version 
docker rmi old_name
```

### Commit image from container
```docker commit -m "message" containername imagename```

### Save image
```docker save -o filename.tar imagename```

### Stop all containers
```docker stop $(docker ps -q)```

### Remove all containers
```docker rm $(docker ps -aq)```

### Container IP
__Powershell:__  
```docker inspect containername | findstr "IP"```

__Bash:__  
```docker inspect containername | grep "IP"```

### Create docker network
```docker network create --driver bridge networkname```

### Run container in network
```docker run --name containername --ip 172.18.0.3  -p 8888:8880 -d -i -t imagename```

### Run container with certain IP
```docker run --name containername --network networkname -p 8888:8880 -d -i -t imagename```

### Run container with memory limit and binds
```docker run -dit --name containername --network host -m="4G" --mount type=bind,source=/home/user,target=/home/host imagename```

### Start container
```docker start -i containername```

### Connect to Docker from within container
docker run -dit --name container_name -v /var/run/docker.sock:/var/run/docker.sock -d erm_py

## Registry API
### Images list
__Powershell:__  
```Invoke-WebRequest -Method Get http://localhost:5000/v2/_catalog | Select-Object -Expand Content```  
__Bash:__  
```curl -s -GET http://localhost:5000/v2/_catalog```

### Image tags
...```/v2/imagename/tags/list/```

### Image manifest including layer digest
...```/v2/<name>/manifests/<reference>```

### Download layer as a blob
...```/v2/imagename/blobs/layerdigest```
