FROM nvidia/cudagl:11.2.2-devel-ubuntu18.04

WORKDIR /tutorial/

# the * should include "vzw_youtube_zip_apr_20.tar.gz" or you need add it by your own
ADD ./* /tutorial/

RUN apt-get update && apt-get install -qq libsm6 libxrender1 libfontconfig1 libxext6 git
RUN apt-get install -qq python3 python3-distutils curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip3 install tensorflow==1.15.0 keras==2.2.4 matplotlib==2.0.2 scikit-build scipy

RUN mkdir -p /tutorial/Training
RUN mv ./mnist.py /tutorial/Training/


CMD ["python3", "/tutorial/Training/mnist.py "]


# install this docker (if linuex os)
# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html
## docker notes
## 1. build - about 5 mins
#sudo docker build -f Dockerfile -t <my_docker_image> .
#
## 2. run image as container
#sudo docker run --gpus all -d <image_ID>
#
## 3. run interactive mode
#sudo docker exec -it <container_ID> /bin/bash
#
## 4. run training
#cd /tutorial/Training
#python3 mnist.py
