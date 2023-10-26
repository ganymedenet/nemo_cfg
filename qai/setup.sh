#!/bin/bash

curl -o docker.sh -L https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/docker.sh
chmod +x docker.sh
./docker.sh


curl -o gpu.sh -L https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/gpu.sh
chmod +x gpu.sh
./gpu.sh

curl -o nginx.sh -L https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/nginx.sh
chmod +x nginx.sh
./nginx.sh