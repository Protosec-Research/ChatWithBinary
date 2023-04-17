#!/bin/bash
#!/bin/bash

read -p "Are you from China (use a anthor mirror)? (y/n): " from_china

os_name=$(uname)

if [ "$from_china" == "y" ] || [ "$from_china" == "Y" ]; then
    macos_link="https://kgithub.com/avast/retdec/releases/download/v5.0/RetDec-v5.0-macOS-Release.tar.xz"
    linux_link="https://kgithub.com/avast/retdec/releases/download/v5.0/RetDec-v5.0-Linux-Release.tar.xz"
else
    macos_link="https://github.com/avast/retdec/releases/download/v5.0/RetDec-v5.0-macOS-Release.tar.xz"
    linux_link="https://github.com/avast/retdec/releases/download/v5.0/RetDec-v5.0-Linux-Release.tar.xz"
fi
# 下载对应版本的 retdec
if [ "$os_name" == "Darwin" ]; then
    echo "Oh, I see, so you are using MAC OS."
    echo "Downloading MacOS retdec ..."
    curl -L -o retdec-macos.tar.gz "$macos_link"
    echo "Download completed, now decompressing ..."
    tar -xJvf retdec-macos.tar.gz
elif [ "$os_name" == "Linux" ]; then
    echo "Oh, I see, so you are using Linux."
    echo "Downloading Linux retdec ..."
    wget -O retdec-linux.tar.gz "$linux_link"
    echo "Download completed, now decompressing ..."
    tar -xJvf retdec-linux.tar.gz
else
    echo "I don't know what OS you are using, please install retdec manually from https://github.com/avast/retdec"
fi

echo "Adding bin/ from retdec to PATH ..."
retdec_bin_path="$(pwd)/${retdec_folder}/bin"

current_shell=$(basename "$SHELL")

if [ "$current_shell" == "zsh" ]; then
    config_file="$HOME/.zshrc"
elif [ "$current_shell" == "bash" ]; then
    config_file="$HOME/.bashrc"
else
    echo "unable to recognize your shell,please add this to shell config:"
    echo "export PATH=\"$retdec_bin_path:\$PATH\""
    exit 1
fi

echo "export PATH=\"$retdec_bin_path:\$PATH\"" >> "$config_file"

read -p "Do you have OpenAI API Key? (you can skip this part and add maunally) (y/n): " has_openai_key

# 如果用户有 API Key，则将其添加到相应的 shell 配置文件中
if [ "$has_openai_key" == "y" ] || [ "$has_openai_key" == "Y" ]; then
    read -p "Please input your OpenAI API Key: " openai_api_key
    echo "export OPENAI_API_KEY=\"$openai_api_key\"" >> "$config_file"
fi

python_path=$(which python3)
echo "#!$python_path" > temp_file.txt
cat Ret2GPT.py >> temp_file.txt
mv temp_file.txt Ret2GPT.py


python3 -m pip install -r requirements.txt
sudo ln -s "$(pwd)/Ret2GPT.py" /usr/local/bin/ret2gpt
sudo chmod +x /usr/local/bin/ret2gpt
echo -e "\033[31minstallation finished, PLEASE RESTART YOUR TERMINAL\033[0m"