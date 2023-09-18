sudo apt install -y linux-headers-$(uname -r)

sudo apt install -y gnupg2 curl
curl -O https://developer.download.nvidia.com/compute/cuda/repos/debian10/x86_64/cuda-repo-debian10_11.0.3-1_amd64.deb
sudo dpkg -i cuda-repo-debian10_11.0.3-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/debian10/x86_64/7fa2af80.pub
sudo apt update

sudo apt install -y cuda

echo 'export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.bashrc
source ~/.bashrc

nvcc --version
