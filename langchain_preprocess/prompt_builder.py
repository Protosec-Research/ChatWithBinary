from langchain.document_loaders import TextLoader
from langchain.chains.summarize import load_summarize_chain
from langchain.indexes import VectorstoreIndexCreator
from langchain.text_splitter import CharacterTextSplitter
from langchain.chat_models import ChatOpenAI
from langchain.llms import OpenAI
from langchain.chains import RetrievalQA

import os

model = ChatOpenAI(model='gpt-3.5-turbo')


OPENAI_API_KEY = os.environ['OPENAI_API_KEY']

def build_reference_for_qa(path):
    input_files = [f'{path}.c']
    output_file = 'gpt_reference.txt'

    with open(output_file, 'w', encoding='utf-8') as outfile:
        for file_name in input_files:
            with open(file_name, 'r', encoding='utf-8') as infile:
                contents = infile.read()
                outfile.write(f"\nThis is {file_name}.\n")
                outfile.write(contents + '\n')
    
    return output_file


def loading(des):
    from langchain.document_loaders import UnstructuredFileLoader
    return UnstructuredFileLoader(des)

def split_files(loader):
    from langchain.text_splitter import RecursiveCharacterTextSplitter
    document = loader.load()    
    text_splitter = RecursiveCharacterTextSplitter(chunk_size=2000, chunk_overlap=200) # Changed from 1000 -> 500 incase the file is not big enough
    return text_splitter.split_documents(document)

def create_qa(loader):
    from langchain.embeddings import OpenAIEmbeddings
    from langchain.vectorstores import Chroma
    from langchain import VectorDBQA
    
    embeddings = OpenAIEmbeddings()
    db = Chroma.from_documents(split_files(loader), embeddings)
    retriever = db.as_retriever(search_kwargs={"k": 1})
    # splited = split_files(loader)
    # docsearch = Chroma.from_documents(split_files(loader), embeddings)
    # return VectorDBQA.from_chain_type(llm=model, chain_type="map_rerank", vectorstore=docsearch,return_source_documents=True)
    
    return RetrievalQA.from_chain_type(llm=model, chain_type="stuff", retriever=retriever)
    
    # index_creator = VectorstoreIndexCreator(
    #     vectorstore_cls=Chroma, 
    #     embedding=OpenAIEmbeddings(),
    #     text_splitter=CharacterTextSplitter(chunk_size=1000, chunk_overlap=0)
    # ).from_loaders([loader])
    # return index_creator
    
# def qa_with_docs(loader,query):
#     from langchain.chains.question_answering import load_qa_chain
#     docs = split_files(loader)
#     chain = load_qa_chain(OpenAI(temperature=0), chain_type="stuff")
#     # chain.run(input_documents=loader.load(), question=query)
    
#     #little modification here
#     chain({"input_documents": docs, "question": query}, return_only_outputs=True)
    

def query_about_files(query,qa):
    # return query.query_with_sources(qa)
    # return qa.run(query)
    
    return qa({"query": query}, return_only_outputs=True)


def summerize_chain(llm,file):
    chain = load_summarize_chain(llm, chain_type="stuff", verbose=True)
    chain.run(file)
    
## All those functions above is about processing the file and creating a chain
## Now, we will try to focus on designed the prompt.

def build_prompt_for_qa(query):
    from langchain import PromptTemplate
    categories = ["Pwn","Reverse"]
    main_prompt = """
    Description: You are PwnGPT: an analyst in the midst of a Capture the Flag (CTF) competition. 
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
            "query": "Is there any insecure use of xxx in this code?",
            "answer": "0% NO, the xxx in this code is secure. The code uses the xxx() function from the xxx, which is a secure xxxx. "
        },{
            "query": "Is there a xxx vulnerability in this code?",
            "answer": "100% Yes, there is a xxx vulnerability in the xxxxx() function. The function uses printf() to print user input without specifying a proper format string. This could allow an attacker to exploit the vulnerability to read or write arbitrary memory locations. To fix this issue, use a xxx that matches the expected input, such as printf(\"%s\", user_input);."
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
            "query": "Does this code have any xxx vulnerabilities?",
            "answer": "50% MAYBE, I might detected a xxx in the code. Specifically in the xxxx() function. The code uses xxx to xxx, which could lead to an overflow. Consider replacing xxx with a safer alternative, such as xxx(), and validate the input size to prevent this issue."
        },
        #     "query": "Can you find any SQL injection vulnerabilities in this code?",
        #     "answer": "NO, there are no SQL injection vulnerabilities present in this code. The code does not interact with any databases, and all user input is handled using safe string manipulation functions. This demonstrates good coding practices and ensures that the code is not susceptible to SQL injection attacks."
        # },
    ]
    
    example_template = "User: {query}\GPT: {answer}"
    example_prompt = PromptTemplate(
        input_variables=["query", "answer"],
        template=example_template
    )
    suffix = "User: {query}\nGPT: "
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

def generate_pwntools_templates():
    prompt = """
    After analysising the function of every function of the source code;
    You will need to generate a pwntools template that can be use by Python with the source provided.
    the template should be looking like this: (Everything in the [] is a according to the program.)
    
    [function_name]([arguement]):
        [code]
    
    For example; This is a function that can be use to interact with `delete` function in a certain heap exploition program:
    
    def deletenote(id):
        p.recvuntil('option--->>')
        p.sendline('4')
        p.recvuntil('note:')
        p.sendline(str(id))
    
    HINT: YOU WILL ONLY NEED TO GENERATE THE MAIN FUNCTION OF THE SOURCE CODE.
    """
    
    return prompt