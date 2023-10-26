#!/bin/bash

rm docker.sh
curl -o docker.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/docker.sh
chmod +x docker.sh
./docker.sh

rm gpu.sh
curl -o gpu.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/gpu.sh
chmod +x gpu.sh
./gpu.sh

rm nginx.sh
curl -o nginx.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/nginx.sh
chmod +x nginx.sh
./nginx.sh