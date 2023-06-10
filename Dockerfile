# 使用带有Python的基础镜像
FROM ubuntu:latest

# 设置环境变量以存储OpenAI API密钥
ENV OPENAI_API_KEY="your_api_key"

# 设置工作目录
WORKDIR /app

# 安装retdec

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa

RUN apt-get update && apt-get install -y \
    python3.9 \
    python3.9-dev \
    python3.9-distutils

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1

RUN apt update$$ apt install -y \
    git \
    python3 \
    python3-pip \ 
    wget \
    tar


# 克隆并编译 RetDec
RUN wget -O retdec-linux.tar.gz https://github.com/avast/retdec/releases/download/v5.0/RetDec-v5.0-Linux-Release.tar.xz
RUN tar -xJvf retdec-linux.tar.gz
RUN rm -f retdec-linux.tar.gz
    
# 将工作目录添加到PYTHONPATH，以便我们的应用可以找到并导入自定义的Python模块
ENV PATH="/app/bin:${PATH}"
ENV PYTHONPATH=/app:$PYTHONPATH

# 将源代码复制到工作目录
COPY . /app

# 安装Python依赖
RUN python3 -m pip install --no-cache-dir -r requirements.txt
RUN pip3 install chromadb
RUN pip3 install tiktoken

WORKDIR /data

# 运行应用
CMD [ "python3", "./Ret2GPT.py" ]
