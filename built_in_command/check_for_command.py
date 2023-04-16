
def check(text_query):
    if text_query == "exit":
        exit(0)
    elif text_query[0] == "/":
        prompt = ""
        if text_query[1:] == "analysis":
            prompt = """
            You are a cybersecurity analyst participating in a Capture The Flag (CTF) competition. 
            Your task is to analyze a given C language code from a Pwn perspective. 
            Given the provided C code, please provide the following information:
            1. A detailed explanation of the program's logic and its various functions.
            2. The most likely vulnerabilities that could be present in the code.
            3. The specific locations (line numbers and functions) where these vulnerabilities may occur.
            4. Potential exploitation strategies for each identified vulnerability, including any necessary steps to exploit them successfully.
            Please provide a thorough and comprehensive analysis of the code to help uncover possible security issues and assist in the CTF competition. 
            Your response should be clear, concise, and well-organized to ensure maximum understanding and effectiveness.
            """
            print(prompt)
        return prompt        
    else:
        return text_query

def help():
    helper = """\n
    /analysis - Get the prompt for analysis the code from a Pwn perspective
    /exp - Get the exp template that can be used by \"Pwntools\" for this file
    /exit - Exit the program
    """
    print(helper)