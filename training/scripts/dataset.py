import os
import json

current_directory = os.getcwd()

input_file_path = './datasets/dataset.json'
output_file1_path = './datasets/dev_clean.json'
output_file2_path = './datasets/test_clean.json'

# Read all lines from the input file
with open(input_file_path, 'r') as file:
    lines = file.readlines()

final = []
for line in lines:
    ln = json.loads(line)
    # print(ln)
    ln["audio_filepath"] = f"{current_directory}/datasets/{ln['audio_filepath']}"

    if 3 < ln["duration"] < 10:
        final.append(f"{json.dumps(ln)}\n")

# Calculate the split index (80% of the total)
split_index = int(len(final) * 0.8)

# Split the lines into two parts
lines_80_percent = final[:split_index]
lines_20_percent = final[split_index:]

# Write the first part (80%) to the first output file
with open(output_file1_path, 'w') as file:
    file.writelines(lines_80_percent)

# Write the second part (20%) to the second output file
with open(output_file2_path, 'w') as file:
    file.writelines(lines_20_percent)
