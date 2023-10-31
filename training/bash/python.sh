sudo apt update

sudo apt install -y build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev

# Create a temporary directory to work in
mkdir ~/python-3.10-install
cd ~/python-3.10-install

# Download Python 3.10 source code
wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tar.xz

# Extract the source code
tar -xf Python-3.10.0.tar.xz

# Navigate into the Python source directory
cd Python-3.10.0

# Configure and compile Python
./configure --enable-optimizations
make -j$(nproc)
sudo make altinstall


sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.10 1

sudo ln -sf /usr/local/bin/python3.10 /usr/bin/python

alias python='/usr/local/bin/python3.10'
