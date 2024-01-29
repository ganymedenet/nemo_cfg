
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
  trainer.max_epochs=400 \
  trainer.accelerator="gpu" \
  trainer.check_val_every_n_epoch=1 \
  trainer.devices=1 &



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


# 1087 T4
cat /proc/1756/fd/1
tail -f /proc/1499/fd/1

# 1110 2T4 30gb
cat /proc/1076/fd/1

tail -f /proc/1076/fd/1


# 23208 p100
cat /proc/23208/fd/1
tail -f /proc/23208/fd/1


wget https://raw.githubusercontent.com/Lightning-AI/lightning/master/requirements/collect_env_details.py
python collect_env_details.py


pytorch-lightning<=2.0.7,>=2.0
https://lightning.ai/docs/pytorch/LTS/api/pytorch_lightning.loops.epoch.TrainingEpochLoop.html#pytorch_lightning.loops.epoch.TrainingEpochLoop.on_advance_end
pip3.10 install pytorch-lightning==2.1.0 -
pip3.10 install pytorch-lightning==2.0.0 ?


================


Reduce Batch Size: One of the most effective ways to reduce memory usage is by decreasing the batch size. In your configuration, the batch size for training is set to 32 and for validation, it's 16. Try reducing these values. Keep in mind that smaller batch sizes can affect the model's ability to learn and generalize, so you might need to adjust other training parameters accordingly.

Lower the Number of Workers: In the dataloader_params, the number of workers for training is set to 8. Reducing the number of workers can decrease memory consumption but might slow down the data loading process.

Optimize FFT Parameters: The Fast Fourier Transform (FFT) parameters (n_fft, n_window_size, n_window_stride) can be adjusted to reduce memory usage. However, this can also impact the quality of the features extracted from the audio. It requires careful tuning to find a balance.

Adjust Model Architecture Parameters: The synthesizer configuration includes parameters like hidden_channels, filter_channels, n_heads, n_layers, which define the complexity of the model. Reducing these numbers can lower memory usage but might also affect the quality of the generated audio.

Use Gradient Accumulation: If reducing the batch size affects the training stability, you can compensate by increasing accumulate_grad_batches. This allows the model to accumulate gradients over multiple mini-batches and perform a single optimization step, effectively simulating a larger batch size.

Reduce Precision: Currently, your precision is set to 32. If your hardware supports it, consider using mixed precision training (precision: 16). This can significantly reduce memory usage and also speed up training, but it requires compatible hardware (like newer NVIDIA GPUs).

Disable Spectral Normalization: The use_spectral_norm is set to false already, which is good for saving memory. Make sure it remains disabled, as spectral normalization can increase memory usage.

Optimize Feature Extractor: In the preprocessor section, parameters like nfilt, n_fft, n_window_size, and n_window_stride affect the computation of spectrograms. Reducing these numbers can save memory, but again, there's a trade-off with feature quality.

Limit the Length of Training Samples: If your dataset contains very long audio files, consider trimming them or using shorter segments. This can be controlled with max_duration and min_duration parameters in your dataset configurations.

Enable Checkpointing and Logging Sparingly: Though not directly related to GPU memory, limiting the frequency of checkpointing and logging (like log_every_n_steps) can save disk space and potentially reduce overhead.