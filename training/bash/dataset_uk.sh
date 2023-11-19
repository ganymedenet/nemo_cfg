
rm -rf datasets
mkdir -p datasets


wget -O ./datasets/dataset.zip https://storage.googleapis.com/qai-datasets/data/DodgeWoodall/SPEAKER_02/dataset.zip
unzip -o ./datasets/dataset.zip -d ./datasets

rm -rf datatset.py
wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/scripts/datatset.py

python datatset.py