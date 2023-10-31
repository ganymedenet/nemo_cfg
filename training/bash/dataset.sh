


# Remove the 'datasets' directory if it exists
rm -rf datasets

# Create the 'datasets' directory
mkdir -p datasets

wget https://raw.githubusercontent.com/NVIDIA/NeMo/main/scripts/dataset_processing/get_librispeech_data.py

python get_librispeech_data.py --data_root=datasets --data_set="dev_clean,test_clean"
