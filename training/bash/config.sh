

# Download vits.py
wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/training/scripts/vits.py

# Create the 'conf' directory and download vits.yaml into it
mkdir conf
wget -O https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/training/scripts/vits.yaml


BRANCH="main"
#mkdir -p tts_dataset_files && cd tts_dataset_files
#wget https://raw.githubusercontent.com/NVIDIA/NeMo/$BRANCH/scripts/tts_dataset_files/ipa_cmudict-0.7b_nv23.01.txt
#wget https://raw.githubusercontent.com/NVIDIA/NeMo/$BRANCH/scripts/tts_dataset_files/heteronyms-052722
#cd ..

# Download ipa_cmudict-0.7b_nv23.01.txt to the 'conf' directory
wget -O conf/ipa_cmudict-0.7b_nv23.01.txt https://raw.githubusercontent.com/NVIDIA/NeMo/$BRANCH/scripts/tts_dataset_files/ipa_cmudict-0.7b_nv23.01.txt

# Download heteronyms-052722 to the 'conf' directory
wget -O conf/heteronyms-052722 https://raw.githubusercontent.com/NVIDIA/NeMo/$BRANCH/scripts/tts_dataset_files/heteronyms-052722

