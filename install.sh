#!/bin/bash
python_path=$(which python3)
echo "#!$python_path" > temp_file.txt
cat ret2gpt.py >> temp_file.txt
mv temp_file.txt ret2gpt.py


python3 -m pip install -r requirements.txt
ln -s "$(pwd)/ret2gpt.py" /usr/local/bin/ret2gpt
chmod +x /usr/local/bin/ret2gpt
echo "Installation completed successfully."
