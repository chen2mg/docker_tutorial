# docker_tutorial

##******************** building cmds*************************

## a. install this docker (if linuex os)
# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html
## b. git clone 

## b. build - about 5 mins
#sudo docker build -f dockerfile -t <my_docker_image> .
#

##******************** additional cmds*************************

## 1. list all images
# sudo docker images
#
## 2. list all running containers
# sudo docker ps
#
## 3. run image as container
#sudo docker run --gpus all -d <image_ID>
#
## 4. run interactive mode
#sudo docker exec -it <container_ID> /bin/bash
#
## 5. run training
#cd /tutorial/Training
#python3 mnist.py
#
## 6. copy file from container to local
# docker cp container_ID:/tutorial/Training/my_model.h5 .
