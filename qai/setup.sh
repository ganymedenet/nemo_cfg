# Download the script using curl
curl -o docker.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/docker.sh
chmod +x docker.sh
bash docker.sh


curl -o gpu.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/gpu.sh
chmod +x gpu.sh
bash gpu.sh

curl -o nginx.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/nginx.sh
chmod +x nginx.sh
bash nginx.sh