
rm -f setup.sh
curl -o setup.sh -L https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/setup.sh
chmod +x setup.sh
./setup.sh

central1 - 34.28.17.91

east4 - 34.145.239.41
 14589

python3.10 vits.py \
  model.sample_rate=16000 \
  train_dataset=datasets/dev_clean.json \
  validation_datasets=datasets/test_clean.json \
  phoneme_dict_path=conf/ipa_cmudict-0.7b_nv23.01.txt \
  heteronyms_path=conf/heteronyms-052722 \
  trainer.max_epochs=200 \
  trainer.accelerator="gpu" \
  trainer.check_val_every_n_epoch=1 \
  trainer.devices=1


nohup python3.10 vits.py \
  model.sample_rate=16000 \
  train_dataset=datasets/dev_clean.json \
  validation_datasets=datasets/test_clean.json \
  phoneme_dict_path=conf/ipa_cmudict-0.7b_nv23.01.txt \
  heteronyms_path=conf/heteronyms-052722 \
  trainer.max_epochs=200 \
  trainer.accelerator="gpu" \
  trainer.check_val_every_n_epoch=1 \
  trainer.devices=2 &



nohup python3.10 vits.py \
  model.sample_rate=22050 \
  train_dataset=datasets/dev_clean.json \
  validation_datasets=datasets/test_clean.json \
  phoneme_dict_path=conf/ipa_cmudict-0.7b_nv23.01.txt \
  heteronyms_path=conf/heteronyms-052722 \
  trainer.max_epochs=100 \
  trainer.accelerator="gpu" \
  trainer.check_val_every_n_epoch=1 \
  trainer.devices=1 &

ps aux | less


# 18833 T4
cat /proc/18833/fd/1
tail -f /proc/18833/fd/1

# 24427 2T4 30gb
tail -f /proc/24427/fd/1


# 23208 p100
cat /proc/23208/fd/1
tail -f /proc/23208/fd/1


wget https://raw.githubusercontent.com/Lightning-AI/lightning/master/requirements/collect_env_details.py
python collect_env_details.py


pytorch-lightning<=2.0.7,>=2.0
https://lightning.ai/docs/pytorch/LTS/api/pytorch_lightning.loops.epoch.TrainingEpochLoop.html#pytorch_lightning.loops.epoch.TrainingEpochLoop.on_advance_end
pip3.10 install pytorch-lightning==2.1.0 -
pip3.10 install pytorch-lightning==2.0.0 ?