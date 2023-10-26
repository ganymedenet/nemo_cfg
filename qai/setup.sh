#!/bin/bash

curl -o docker.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/docker.sh
chmod +x docker.sh
yes | ./docker.sh


curl -o gpu.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/gpu.sh
chmod +x gpu.sh
yes | ./gpu.sh

curl -o nginx.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/nginx.sh
chmod +x nginx.sh
yes | ./nginx.sh