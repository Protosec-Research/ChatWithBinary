from langchain_preprocess import prompt_builder as pwnchain
from langchain.embeddings import OpenAIEmbeddings
from built_in_command import command_line


# def main():
#     path = "example2/hacknote.c"
#     loader = pwnchain.loading(path)
#     created_qa = pwnchain.create_qa(loader)
#     while True:
#         text_query = input(f"Enter a query thats about {path} >>> ")
#         text_query = pwnchain.build_prompt_for_qa(text_query)
#         print(pwnchain.query_about_files(qa=created_qa,query=text_query))

    
if __name__ == "__main__":
    command_line.main()