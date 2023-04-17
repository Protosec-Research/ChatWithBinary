#!/bin/bash
python_path=$(which python3)
echo "#!$python_path" > temp_file.txt
cat Ret2GPT.py >> temp_file.txt
mv temp_file.txt Ret2GPT.py


python3 -m pip install -r requirements.txt
sudo ln -s "$(pwd)/Ret2GPT.py" /usr/local/bin/ret2gpt
sudo chmod +x /usr/local/bin/ret2gpt
echo "Installation completed successfully."