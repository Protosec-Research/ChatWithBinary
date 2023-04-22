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
            HINT: THE POSSIBLE VULNERABILITY CAN BE BOTH ON HEAP OR STACK
            """
            print(prompt)
        
        elif "contain" in text_query[1:]:
            if len(text_query.split(" ")) != 2:
                print("Invalid target, are you sure the target is a single word; NO PROMPT GENERATED")
                return 0
            target = text_query.split(" ")[1].strip()
            prompt = f"""
            Do this code contain any {target} vulnerabilities?
            """
            print(prompt)
    
        elif text_query[1:] == "exp":
            prompt = """
            After analysising the function of every function of the source code;
            You will need to generate a pwntools template that can be by Python with your analysis of the source provided.
            the template should be looking like this: (Everything in the [] is a according to the program.)
        
            [function_name]([argument]):
                [code]
        
            For example; This is a function that can be use to interact with [CERTAIN FUNCTION] function in a certain program:
            in this case, p = process([CERTAIN PROGRAM])
        
            def [CERTAIN FUNCTION BASED ON THE CODE](argument1,argument2):
                p.recvuntil([CERTAIN CONDITION BASED ON THE CODE])
                p.sendline(argument1)
                p.recvuntil([CERTAIN CONDITION 2 BASED ON THE CODE])
                p.sendline(argument2)
                
            You do not have to be exactly the same with the example, but you need to make sure that the function can be use to interact with the source code.
            Also, Every thing must be exactly based on the code, if you are not sure about the code, state that you are not sure;
            You only need to output the python code, no explaination will be required
            """
            
            
            
            
        return prompt
        
    else:
        return text_query

def help():
    helper = """\n
    /analysis - Get the prompt for analysis the code from a Pwn perspective
    /contain - Get the prompt for asking if the code contain a specific vulnerability, e.g. /contain "buffer-overflow"
    /exp - Get the exp template that can be used by \"Pwntools\" for this file
    /exit - Exit the program
    """
    print(helper)