# Ret2GPT


<img width="1000" alt="Xnip2023-04-16_11-36-38" src="https://user-images.githubusercontent.com/72267897/232265065-cf63b1d8-37ea-4eaa-b64e-e434eb369c16.png">


<!-- *由于我用的是英文写的README，所以如果有翻译不好的请大家谅解 :(* -->
`RET2GPT` 是一款采用 LangChain（OpenAI API）技术分析二进制文件的尖端软件工具。它主要专注于帮助 CTF（Capture The Flag）Pwners 深入了解他们正在处理的二进制文件，并为他们提供有价值的帮助，以便更有效地解决挑战 :)

[中文文档 README 📖](README.zh_CN.md)

[English README 📖](README.md)

`RET2GPT` 建立在人工智能和机器学习的坚实基础之上，使其能够快速有效地分析复杂的二进制文件。通过利用 OpenAI API 的能力，`RET2GPT` 可以为二进制文件提供全面而详细的分析，使其成为 CTF Pwners 不可或缺的工具。

`RET2GPT` 的主要目标是简化理解二进制文件的过程，从而使 CTF Pwners 能够专注于解决挑战，而不是陷入二进制分析的复杂性中。软件通过为用户提供二进制文件结构、逻辑和潜在漏洞的详细检查来实现这一目标。这种分析有助于 Pwners 识别代码中可能被攻击者利用的任何薄弱点。

`总之，Ret2GPT` 包括以下功能：

* **易于使用**：无需输入任何其他文件，仅需二进制文件 即可开始使用
* **Langchains**：使用 `langchain`的技术 来拆分文件，节省大量的标记化时间和钱
* **精确分析**：使用 `langchain` 和 `OpenAI` API 分析二进制文件，使用我精心设计的提示以获得最佳结果
* **自动化**：使用 `langchain` 和 `OpenAI` API 自动化分析二进制文件，无需人工干预

# 安装

## Pip
我们的软件包已经成功上传到[Pypi](https://pypi.org/project/Ret2GPT/)！！！所以你可以通过使用`pip`轻松安装：

```
python3 -m pip --index-url=https://pypi.org/simple/ Ret2GPT
```

此外，如果你还没有安装“retdec”，你可能需要先通过https://github.com/avast/retdec安装它，它不会花太长时间，而且一劳永逸

然而，在你开始之前，你仍然需要在终端设置你的`OPENAI_KEY`，你可以从[这里](https://beta.openai.com/docs/developer-quickstart)获得你的密钥
```
export OPENAI_API_KEY="在这里输入你的api_key"
```
然后你可以在终端中通过`Ret2GPT`使用它：

```
Ret2GPT [FILE_PATH]
```
## Local
首先，克隆我们的仓库：
```
git clone https://github.com/DDizzzy79/Ret2GPT.git
```
现在，如果你只想尝试 Ret2GPT，你可以用 python3 运行它：

```
python3 ret2gpt
```
然而，如果你想永久使用 Ret2GPT，你可以通过执行 install.sh 文件轻松安装它! 你可以通过以下方式运行它：
```
chmod +x install.sh && ./install.sh
```     
之后，您可以使用 ret2gpt 命令从任何地方运行我们的软件，这是多么神奇？

# 使用方法
开始之前你需要设定你的 `OPENAI_KEY` , 你可以在 [这里](https://beta.openai.com/docs/developer-quickstart) 获取到你的`key` 
```
export OPENAI_API_KEY="这里输入你的API_KEY"
```
之后，在命令行中使用此文件的方法是：
```
Usage: ret2gpt [FILE_PATH]
```
现在，你进入了命令行界面，你可以**问你想问的任何问题**
例如，如果想知道该程序是否容易受到栈溢出的攻击，你可以询问：
```
 What do you want to ask about example2/hacknote.c >>> Are there any buffer overflow based on the program?

    🏂 PwnGPT: 100% 是的，这段代码中存在几个潜在的缓冲区溢出漏洞。
    add_note() 函数使用 read() 函数读取用户输入到缓冲区，但没有指定最大缓冲区大小，这可能允许攻击者溢出缓冲区并覆盖相邻的内存位置。
    此外，print_note() 和 del_note() 函数也在没有适当边界检查的情况下读取用户输入，可能导致缓冲区溢出。
    要解决这些问题，在读取用户输入之前实施适当的输入验证和边界检查，并使用允许指定最大缓冲区大小的函数，如 fgets() 或 scanf()。
```

你可以使用 help 命令来获取帮助信息：
```
What do you want to ask about example2/hacknote.c >>> /help

    /analysis - 从 Pwn 角度分析代码的提示
    /exp - 获取可以用于此文件的 "Pwntools" 的 exp 模板
    /exit - 退出程序

What do you want to ask about example2/hacknote.c >>>
 ```

# Ret2GPT 是如何工作的？
要回答这个问题，我们必须分析程序的每个目录和步骤，所以让我们开始吧！

## `langchain_proprocess/`
对于这部分代码，我设计了一系列函数和实用工具，利用 LangChain（OpenAI API）技术的能力，创建了一个先进的问答系统。这个系统专门用于处理和分析文本文件，主要目的是帮助 Capture the Flag（CTF）Pwners 更有效地理解二进制文件并解决挑战。

我开始导入必要的模块并使用 GPT-3.5 Turbo 模型初始化 ChatOpenAI 模型。接下来，我定义了几个实用程序函数，用于处理文本分析管道中的各种任务：

## `loading`:
此函数以文本文件描述作为输入，并使用 TextLoader 实用程序将文件加载到内存中。

## `split_files`:
文件加载后，此函数使用 CharacterTextSplitter 实用程序将文档拆分成较小的块，使其更易于处理。
 ```python
 def split_files(loader):
    document = loader.load()
    text_splitter = CharacterTextSplitter(chunk_size=1000, chunk_overlap=0)
    return text_splitter.split_documents(document)
 ```

## `create_qa`:
此函数通过将文本块与 OpenAIEmbeddings 和 Chroma 向量存储库相结合，创建一个问题回答系统
```python
def create_qa(loader):
    from langchain.embeddings import OpenAIEmbeddings
    from langchain.vectorstores import Chroma
    
    embeddings = OpenAIEmbeddings()
    db = Chroma.from_documents(split_files(loader), embeddings)
    retriever = db.as_retriever()
    return RetrievalQA.from_chain_type(llm=model, chain_type="stuff", retriever=retriever)
```
## `qa_with_docs`:
此函数运行问题回答链，接受查询和文档加载器作为输入以生成有意义的响应。

## `query_about_files`:
此函数通过提供用户定义的查询来促进查询问题回答系统。

## `summerize_chain`:
此函数负责使用摘要链对文本文件进行摘要，生成文件内容的简洁摘要。
## `build_prompt_for_qa()`:
为确保问题回答系统具有上下文感知能力并能提供准确和相关的信息，我使用 `build_prompt_for_qa()` 构建了一个详细的提示。此函数使用 `FewShotPromptTemplate` 类的少量示例学习方法，包括几个代码分析和漏洞识别的示例。这些示例作为模型的指导，帮助它理解上下文并作出相应的回应。

```python
def build_prompt_for_qa(query):
    from langchain import PromptTemplate
    categories = ["Pwn","Reverse"]
    main_prompt = """
    Description: You are an analyst in the midst of a Capture the Flag (CTF) competition. 
    Your task is to help contestants analyze decompiled C files derived from binary files they provide.
    You must give the possibility of the vulnerability first
    Keep in mind that you only have access to the C language files and are not able to ask for any additional information about the files.
    When you give respones, you must give the location of the vulnerability, and the reason why it is a vulnerability, else, you cannot respone.
    Utilize your expertise to analyze the C files thoroughly and provide valuable insights to the contestants.
    Prompt: A contestant in the CTF competition has just submitted a decompiled C file to you for analysis. 
    They are looking for any potential vulnerabilities, weaknesses, or clues that might assist them in the competition. 
    Using only the information provided in the C file, offer a detailed analysis, highlighting any areas of interest or concern.
    DO NOT GENERATED INFOMATION THAT IS UNSURE
    
    And here are some examples:                
    """
    examples = [
        # {
        #     "query": "Can you find any buffer overflow vulnerabilities in this code?",
        #     "answer": "YES, Upon analysis of the code, I have identified a potential buffer overflow vulnerability in the function read_input. The function uses gets() to read user input into a fixed-size buffer without checking the input length, which could lead to an overflow. Consider replacing gets() with a safer alternative, such as fgets(), and validate the input size to prevent this issue."
        # },{
        #     "query": "Does this code have any race condition vulnerabilities?",
        #     "answer": "YES, Upon analysis, I have identified a potential race condition vulnerability in the function write_to_file. The function opens a file using fopen() and performs write operations without proper synchronization mechanisms, such as locks. This could lead to data corruption or unauthorized access if multiple processes or threads access the file simultaneously. To mitigate this issue, consider implementing proper file locking mechanisms or using atomic file operations."
        # },
        {
            "query": "Is there any insecure use of random number generation in this code?",
            "answer": "0% NO, the random number generation in this code is secure. The code uses the randombytes() function from the libsodium library, which is a cryptographically secure random number generator. This ensures that any random values generated by the code are sufficiently unpredictable and resistant to attacks."
        },{
            "query": "Is there a format string vulnerability in this code?",
            "answer": "100% Yes, there is a format string vulnerability in the print_user_info() function. The function uses printf() to print user input without specifying a proper format string. This could allow an attacker to exploit the vulnerability to read or write arbitrary memory locations. To fix this issue, use a format string that matches the expected input, such as printf(\"%s\", user_input);."
        },
        # {
        #     "query": "Does this code have any heap-based buffer overflow vulnerabilities?",
        #     "answer": "NO, there do not appear to be any heap-based buffer overflow vulnerabilities in the code. The functions that handle memory allocation and manipulation use malloc() and memcpy() appropriately, ensuring that the allocated buffer size matches the data being copied. Additionally, input validation checks are in place to prevent the possibility of buffer overflows."
        # },{
        #     "query": "Are there any double-free vulnerabilities in this code?",
        #     "answer": "NO, I could not find any double-free vulnerabilities in the code. The functions that deal with memory management use free() appropriately, and there are no instances where the same memory block is freed more than once. This indicates that proper care has been taken to prevent memory management issues in the code."
        # },{
        #     "query": "Can you find any use-after-free vulnerabilities in this code?",
        #     "answer": "YES, Upon analysis, I have identified a use-after-free vulnerability in the process_data() function. The function frees a memory block using free() and then proceeds to access the same memory block later in the code. This could be exploited by an attacker to execute arbitrary code or cause a crash. To resolve this issue, ensure that memory is accessed only before it is freed and that any pointers to freed memory are properly nullified."
        {
            "query": "Does this code have any integer overflow vulnerabilities?",
            "answer": "50% MAYBE, I might detected a potential integer overflow vulnerability in the calculate_size() function. The function may performs arithmetic operations on user-supplied integers without proper boundary checks, which could result in an integer overflow. This might lead to incorrect calculations, buffer overflows, or other unintended behavior. To mitigate this vulnerability, implement proper input validation and boundary checks before performing arithmetic operations."
        },
        #     "query": "Can you find any SQL injection vulnerabilities in this code?",
        #     "answer": "NO, there are no SQL injection vulnerabilities present in this code. The code does not interact with any databases, and all user input is handled using safe string manipulation functions. This demonstrates good coding practices and ensures that the code is not susceptible to SQL injection attacks."
        # },
    ]
    
    example_template = "User: {query} (Based on the code)\GPT: {answer}"
    example_prompt = PromptTemplate(
        input_variables=["query", "answer"],
        template=example_template
    )
    suffix = "User: {query}\nAI: "
    from langchain import FewShotPromptTemplate
    few_shot_prompt_template = FewShotPromptTemplate(
        examples=examples,
        example_prompt=example_prompt,
        prefix=main_prompt,
        suffix=suffix,
        input_variables=["query"],
        example_separator="\n\n"
    )
    return few_shot_prompt_template.format(query=query)
```
# `built_in_command/`
我认为Ret2gpt中的这一部分不需要太多解释，它只是一个命令行界面，允许用户与系统交互。`built_in_command`文件夹包含以下文件：

## `__init__.py`：
此文件负责将built_in_command文件夹初始化为Python包。
## `check_for_command.py`：
该文件包含check()和help()函数，check()函数检查用户输入是否为命令，并返回不同的提示与命令，help()函数打印帮助信息。
## `command_line.py`：
该文件包含command_line()函数，它是built_in_command文件夹的主要函数。它负责解析用户输入并调用相应的函数。

# Star History

[![Star History Chart](https://api.star-history.com/svg?repos=DDizzzy79/Ret2GPT&type=Date)](https://star-history.com/#DDizzzy79/Ret2GPT&Date)