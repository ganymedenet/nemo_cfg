#!/bin/bash

rm python.sh
curl -o python.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/bash/python.sh
chmod +x python.sh
./python.sh

rm gpu.sh
curl -o gpu.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/gpu.sh
chmod +x gpu.sh
./gpu.sh


rm install.sh
curl -o install.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/bash/install.sh
chmod +x install.sh
./install.sh


rm config.sh
curl -o config.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/bash/config.sh
chmod +x config.sh
./config.sh


rm dataset.sh
curl -o dataset.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/bash/dataset.sh
chmod +x dataset.sh
./dataset.sh

