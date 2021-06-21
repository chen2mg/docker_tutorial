FROM nvidia/cudagl:11.2.2-devel-ubuntu18.04

WORKDIR /tutorial/

# the * should include scripts or data files
ADD ./* /tutorial/

RUN apt-get update && apt-get install -qq libsm6 libxrender1 libfontconfig1 libxext6 git
RUN apt-get install -qq python3 python3-distutils curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip3 install tensorflow==1.15.0 keras==2.2.4 matplotlib==2.0.2 scikit-build scipy

RUN mkdir -p /tutorial/Training
RUN mv ./mnist.py /tutorial/Training/
RUN python3 /tutorial/Training/mnist.py

RUN ls -lrt *
ENTRYPOINT ["tail", "-f", "/dev/null"]


##******************** building cmds*************************

## a. install this docker (if linuex os)
# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html
## docker notes
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
