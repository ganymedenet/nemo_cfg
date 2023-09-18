#!/bin/bash

sudo apt-get install sox

BRANCH=main

#wget https://raw.githubusercontent.com/NVIDIA/NeMo/$BRANCH/examples/tts/vits.py

mkdir -p conf
cd conf
# wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/vits.yaml
wget https://raw.githubusercontent.com/NVIDIA/NeMo/$BRANCH/scripts/tts_dataset_files/ipa_cmudict-0.7b_nv23.01.txt
wget https://raw.githubusercontent.com/NVIDIA/NeMo/$BRANCH/scripts/tts_dataset_files/heteronyms-052722
cd ..

# Remove the datasets directory if it exists and create it
rm -rf datasets
mkdir -p datasets

# Fetch the get_librispeech_data.py script from NeMo repository
wget https://raw.githubusercontent.com/NVIDIA/NeMo/main/scripts/dataset_processing/get_librispeech_data.py

pip3 install sox tqdm

# Run the script to download the LibriSpeech dataset parts
python3 get_librispeech_data.py --data_root=datasets --data_set="dev_clean,test_clean"

exec "$@"
