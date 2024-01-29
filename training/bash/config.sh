

# Download vits.py
rm -rf vits.py
wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/scripts/vits.py

# Create the 'conf' directory and download vits.yaml into it
mkdir -p conf && cd conf
rm -rf vits.yaml
wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/scripts/vits.yaml
cd ..

BRANCH="main"

wget -O conf/ipa_cmudict-0.7b_nv23.01.txt https://raw.githubusercontent.com/NVIDIA/NeMo/$BRANCH/scripts/tts_dataset_files/ipa_cmudict-0.7b_nv23.01.txt
wget -O conf/heteronyms-052722 https://raw.githubusercontent.com/NVIDIA/NeMo/$BRANCH/scripts/tts_dataset_files/heteronyms-052722

