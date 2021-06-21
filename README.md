# Guide

### if you have no idea what is docker, check this: shorturl.at/xFIK5


# *** building cmds ***

### a. install this docker (if linuex os)
### https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html

### b. get the repo
`git clone https://github.com/chen2mg/docker_tutorial.git`

### c. build & run & save the docker image - about 5 mins
`sudo docker build -f dockerfile -t <my_docker_image> .`

# *** additional cmds ***

### 1. list all images
`sudo docker images`

### 2. list all running containers
`sudo docker ps`

### 3. run image as container
`sudo docker run --gpus all -d <image_ID>`

### 4. run interactive mode
`sudo docker exec -it <container_ID> /bin/bash`

### 5. run training
`cd /tutorial/Training`
`python3 mnist.py`

### 6. copy file from container to local
`docker cp container_ID:/tutorial/my_model.h5 .`
