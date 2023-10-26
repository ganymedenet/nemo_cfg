# Download the script using curl
curl -o sites-available.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/docker.sh
chmod +x docker.sh
bash docker.sh


curl -o sites-available.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/gpu.sh
chmod +x gpu.sh
bash gpu.sh

curl -o sites-available.sh https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/nginx.sh
chmod +x nginx.sh
bash nginx.sh