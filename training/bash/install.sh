# Install sox using apt-get
sudo apt-get -y install sox libsndfile1 ffmpeg

# Install the sox Python package using pip
pip3.10 install numpy>=1.22,<1.24
pip3.10 install sox
pip3.10 install wget text-unidecode matplotlib>=3.3.2
pip3.10 install pynini
pip3.10 install "git+https://github.com/NVIDIA/NeMo.git@main#egg=nemo_toolkit[all]"
#pip3.10  install --no-cache-dir torch torchvision torchaudio -f https://download.pytorch.org/whl/cu122/torch_stable.html
pip3.10 install pytorch-lightning
