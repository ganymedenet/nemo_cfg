#!/bin/bash

curl -o docker.sh -y https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/docker.sh
chmod +x docker.sh
yes | ./docker.sh


curl -o gpu.sh -y https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/gpu.sh
chmod +x gpu.sh
yes | ./gpu.sh

curl -o nginx.sh -y https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/nginx.sh
chmod +x nginx.sh
yes | ./nginx.sh