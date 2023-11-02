
rm -f setup.sh
curl -o setup.sh -L https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/training/setup.sh
chmod +x setup.sh
./setup.sh

central1 - 34.28.17.91

east4 - 34.145.239.41




python vits.py \
  model.sample_rate=22050 \
  train_dataset=datasets/dev_clean.json \
  validation_datasets=datasets/test_clean.json \
  phoneme_dict_path=conf/ipa_cmudict-0.7b_nv23.01.txt \
  heteronyms_path=conf/heteronyms-052722 \
  trainer.max_epochs=4 \
  trainer.accelerator="gpu" \
  trainer.check_val_every_n_epoch=1 \
  trainer.devices=1
