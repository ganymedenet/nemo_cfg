sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg2

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

sudo apt update

sudo apt install docker-ce

sudo systemctl start docker
sudo systemctl enable docker

newgrp docker

sudo systemctl restart docker
