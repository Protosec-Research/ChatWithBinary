import sys
import os
current_path = os.path.dirname(os.path.abspath(__file__))
custom_lib_path = os.path.join(current_path, '..', 'langchain_preprocess')
sys.path.append(custom_lib_path)
import langchain_preprocess.prompt_builder as pwnchain
import builtins
from rich.console import Console
from rich import print
from enrich.console import Console
import logging
from rich.padding import Padding

console = Console(soft_wrap=False)
log_console = Console(style="grey66 italic",redirect=True)

### redirctiong logging .....
class RichLoggingHandler(logging.Handler):
    def __init__(self, console):
        super().__init__()
        self.console = console

    def emit(self, record):
        log_entry = self.format(record)
        self.console.log(log_entry)

# 将自定义处理器添加到根日志记录器
handler = RichLoggingHandler(log_console)
formatter = logging.Formatter('%(message)s')
handler.setFormatter(formatter)
logging.getLogger().addHandler(handler)
logging.getLogger().setLevel(logging.INFO)

### ......


def add_indent(text, spaces=2):
    lines = text.split('\n')
    indented_lines = [f"{' ' * spaces}{line}" for line in lines]
    return '\n'.join(indented_lines)

from rich.panel import Panel
from rich.layout import Layout
from rich.text import Text

builtins.print = log_console.print

def intro():
    Welcome = """
    [bold magenta] Welcome to [/bold magenta][bold cyan]PwnGPT[/bold cyan]
    [bold magenta] 欢迎来到 [/bold magenta][bold cyan]PwnGPT[/bold cyan]\n\n
    """
    
    console.print(Welcome, justify="center")

def loop():
    from rich.prompt import Prompt
    path = Prompt.ask("[bold medium_purple1]Please enter the path[/bold medium_purple1]", default=".")
    with console.capture() as capture:
        loader = pwnchain.loading(path)
        created_qa = pwnchain.create_qa(loader)
    
    while True:
        text_query = console.input(f"[bold light_steel_blue1] What do you want to ask about [/bold light_steel_blue1][bold plum2]{path}[/bold plum2] >>> ")
        text_query = pwnchain.build_prompt_for_qa(text_query)
        with console.status("Generating output...", spinner="monkey"):
            answer = pwnchain.query_about_files(qa=created_qa,query=text_query)
        text = f" \n[bold medium_purple1]:snowboarder: PwnGPT[/bold medium_purple1]:[sky_blue2] {answer}[/sky_blue2]"
        text = text.replace(".", ".\n")
        text = Panel(text,padding=(1,1))
        log_console.print(text)
        
def main():
    intro()
    loop()