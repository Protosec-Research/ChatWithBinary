# ChatWithBinary

**ChatWithBinary is now available in ChatWithBinary.com!!!!!!**

<img width="1507" alt="image" src="https://github.com/retr0reg/Ret2GPT/assets/72267897/76a00844-5dc7-4e6e-9ddd-d4b35ee49754">


<img width="1000" alt="Xnip2023-04-16_11-36-38" src="https://user-images.githubusercontent.com/72267897/232265065-cf63b1d8-37ea-4eaa-b64e-e434eb369c16.png">




`ChatWithBinary` is a cutting-edge software tool designed to analyze binary files using the **LangChain** (OpenAI API) technology. It primarily focuses on aiding CTF (Capture The Flag) Pwners in gaining a deeper understanding of the binary files they are working with and providing valuable assistance to help them solve challenges more effectively :)

[中文文档 README 📖](README.zh_CN.md)

[English README 📖](README.md)

`ChatWithBinary`  is built upon a strong foundation of artificial intelligence and machine learning, which enables it to analyze complex binary files quickly and efficiently. By leveraging the power of `OpenAI API`, RET2GPT can offer a comprehensive and detailed analysis of binary files, making it an indispensable tool for CTF Pwners.

The primary goal of `ChatWithBinary` is to streamline the process of understanding binary files, thereby allowing CTF Pwners to focus on solving challenges rather than getting bogged down in the intricacies of binary analysis. The software achieves this by providing users with a thorough examination of the binary file's structure, logic, and potential vulnerabilities. This analysis assists Pwners in identifying any weak points in the code that may be exploitable by attackers.

All in all, `ChatWithBinary` includes those feature:
* **Easy-to-use** : No need to input any other files, **only the binary file** and you are good to go 
* **Langchains**: Use `langchain` to split the file, save you tons of tokenizing time and lots of money 
* **Precise Analyze** : Analyze binary file using langchain & OpenAI API, use elebrately designed prompt by me to get the best result
* **Automatic** : Use `langchain` and `OpenAI API` to automate analysis of binaries without human intervention



# Installation
## Pip
Our package have successfully uploaded to [Pypi](https://pypi.org/project/Ret2GPT/) !!!, so you can easily install it by using `pip`:

```
python3 -m pip --index-url=https://pypi.org/simple/ Ret2GPT
```

Additionally, if yu didn't install `retdec` yet, you may need to install it via https://github.com/avast/retdec first, it won't take too long, will be once and for all

Before you start, you still need to set your `OPENAI_KEY` in the terminal, you can get your key from [here](https://beta.openai.com/docs/developer-quickstart)
```
export OPENAI_API_KEY="Enter your api_key here"
```
Then you can use it by `Ret2GPT` in the terminal:

```
Ret2GPT [FILE_PATH]
```

## Local
First, clone our repo:
```
git clone https://github.com/DDizzzy79/Ret2GPT.git
```

Now, if you only want to try `Ret2GPT`, you can simply run it by using `python3`: 
```
python3 ret2gpt
```
However, if  you want tot use `Ret2GPT` permanently, you can easily install it by executing the `install.sh` file:
```
chmod +x install.sh && ./install.sh
```
After that, you can use `ret2gpt` command to run our software from anywhere, what a magic is that?

# Usage
Before you start, you need to set your `OPENAI_KEY` in the terminal, you can get your key from [here](https://beta.openai.com/docs/developer-quickstart)
```
export OPENAI_API_KEY="Enter your api_key here"
```
First, the usage of this file in commandline is:
```
Usage: ret2gpt [FILE_PATH]
```

Now, you entered the commandline interface, You can ask **ANYQUESTION YOU WANT**

for example, if want to find of the program is vulnerable to buffer overflow, you can ask:
```
 What do you want to ask about example2/hacknote.c >>> Are there any buffer overflow based on the program?

🏂 PwnGPT: 100% YES, there are several potential buffer overflow vulnerabilities in this code. 
 The add_note() function uses the read() function to read user input into a buffer without specifying a maximum buffer size, 
 which could allow an attacker to overflow the buffer and overwrite adjacent memory locations.
 Additionally, the print_note() and del_note() functions also read user input without proper boundary checks, which could result in buffer overflows. 
 To fix these issues, implement proper input validation and boundary checks before reading user input, and use functions like fgets() or scanf() that allow specifying a maximum buffer size.
```

you can use `help` command to get the help message:
```
What do you want to ask about example2/hacknote.c >>> /help


    /analysis - Get the prompt for analysis the code from a Pwn perspective
    /exp - Get the exp template that can be used by "Pwntools" for this file
    /exit - Exit the program


 What do you want to ask about example2/hacknote.c >>>
 ```
I am sure you will figure out yourself what does two commands means


<!-- The commands in the program are super easy, I am sure you will figure out yourself, but if you still have any questions, you can always ask me by opening an issue on our github repo. -->

<!-- <img width="800" alt="Xnip2023-04-16_11-04-30" src="https://user-images.githubusercontent.com/72267897/232264043-5f3a2c02-8068-42c5-aae1-dd858c4abfcb.png"> -->

# How does Ret2GPT works?

to find the answer of this question, we must analysis every directory and step of the program, so let's start!

## `langchain_proprocess/`

For this part of  code, I have designed a series of functions and utilities that leverage the power of the LangChain (OpenAI API) technology to create an advanced question-answering system. This system is specifically tailored for processing and analyzing text files, with the primary goal of assisting Capture the Flag (CTF) Pwners in understanding binary files and solving challenges more effectively.

I started by importing the necessary modules and initializing the ChatOpenAI model with the GPT-3.5 Turbo model. Next, I defined several utility functions that handle various tasks in the text analysis pipeline:

### `loading`: 
This function takes a text file description as input and utilizes the TextLoader utility to load the file into memory.
### `split_files`:
 Once the file is loaded, this function employs the CharacterTextSplitter utility to break the document into smaller chunks, making it easier to process.
 ```python
 def split_files(loader):
    document = loader.load()
    text_splitter = CharacterTextSplitter(chunk_size=1000, chunk_overlap=0)
    return text_splitter.split_documents(document)
 ```
### `create_qa`: 
This function creates a question-answering system by combining the text chunks with the OpenAIEmbeddings and Chroma vector store, allowing efficient retrieval of relevant information.
```python
def create_qa(loader):
    from langchain.embeddings import OpenAIEmbeddings
    from langchain.vectorstores import Chroma
    
    embeddings = OpenAIEmbeddings()
    db = Chroma.from_documents(split_files(loader), embeddings)
    retriever = db.as_retriever()
    return RetrievalQA.from_chain_type(llm=model, chain_type="stuff", retriever=retriever)
```
Also, I use GPT3.5 for `QA bot`

### `qa_with_docs`: 
This function runs the question-answering chain, taking a query and document loader as input to generate meaningful responses.
### `query_about_files`: 
This function facilitates querying the question-answering system by providing a user-defined query.
### `summerize_chain`: 
This function is responsible for summarizing the text file using the summarization chain, generating a concise summary of the file's content.

To ensure the question-answering system is context-aware and can provide accurate and relevant information, I built a detailed prompt using the `build_prompt_for_qa()`. This function employs a few-shot learning approach with the FewShotPromptTemplate class, incorporating several examples of code analysis and vulnerability identification. These examples serve as a guide for the model, helping it understand the context and respond accordingly.

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


## `built_in_command/`
I think this part of `Ret2gpt` do not require that much of explaination, it is just a command line interface that allows users to interact with the system. The `built_in_command` folder contains the following files:
  * `__init__.py`: This file is responsible for initializing the `built_in_command` folder as a python package.
  * `check_for_command.py`: This file contains the `check()` and `help()` function, `check()` checks if the user input is a command, and return different prompt with the command, and `help()` prints the help message.
  * `command_line.py`: This file contains the `command_line()` function, which is the main function of the `built_in_command` folder. It is responsible for parsing the user input and calling the corresponding function. 

# Star History

[![Star History Chart](https://api.star-history.com/svg?repos=DDizzzy79/Ret2GPT&type=Date)](https://star-history.com/#DDizzzy79/Ret2GPT&Date)
