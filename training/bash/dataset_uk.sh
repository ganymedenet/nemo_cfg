
rm -rf datasets
mkdir -p datasets


wget -O ./datasets/dataset.zip https://storage.googleapis.com/qai-datasets/data/DodgeWoodall/SPEAKER_00/dataset.zip
unzip -o ./datasets/dataset.zip -d ./datasets
mv ./datasets/data/DodgeWoodall/SPEAKER_00/dataset.json ./datasets

rm -rf dataset.py
wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/scripts/dataset.py

python dataset.py