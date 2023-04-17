import sys
import os

current_path = os.path.dirname(os.path.abspath(__file__))
custom_lib_path = os.path.join(current_path, '..', 'langchain_preprocess')
sys.path.append(custom_lib_path)
custom_lib_path = os.path.join(current_path, '..', 'built_in_command')
sys.path.append(custom_lib_path)
custom_lib_path = os.path.join(current_path, '..', 'decompile_file')
sys.path.append(custom_lib_path)

import langchain_preprocess.prompt_builder as pwnchain
import decompile_file.main as retdec
import builtins
from rich.console import Console
from rich import print
from enrich.console import Console
import logging
from rich.padding import Padding

console = Console(soft_wrap=False)
log_console = Console(style="grey66 italic",redirect=True)
error_console = Console(stderr=True, style="bold red")

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

def gradient_text(text, start_color, end_color):
    from rich.segment import Segment
    from rich.style import Style
    import matplotlib.colors
    start_rgb = matplotlib.colors.hex2color(start_color)
    end_rgb = matplotlib.colors.hex2color(end_color)

    text_obj = Text()
    for index, char in enumerate(text):
        t = index / (len(text) - 1)
        current_color = (
            start_rgb[0] + (end_rgb[0] - start_rgb[0]) * t,
            start_rgb[1] + (end_rgb[1] - start_rgb[1]) * t,
            start_rgb[2] + (end_rgb[2] - start_rgb[2]) * t
        )

        current_color_hex = matplotlib.colors.rgb2hex(current_color)
        style = Style(color=current_color_hex)
        text_obj.append(char, style)

    return text_obj

def add_indent(text, spaces=2):
    lines = text.split('\n')
    indented_lines = [f"{' ' * spaces}{line}" for line in lines]
    return '\n'.join(indented_lines)

from rich.panel import Panel
from rich.layout import Layout
from rich.text import Text

builtins.print = log_console.print

def intro():
    from rich.table import Table
    # header = """\n    dBBBBBb    dBBBP  dBBBBBBP dBBBBb    dBBBBb dBBBBBb  dBBBBBBP\n   dBP                                         dB'\n   dBBBBK'  dBBP      dBP      dBBP   dBBBB    dBBBP'    dBP\n  dBP  BB  dBP       dBP      dBP__  dB' BB   dBP       dBP\n dBP  dB' dBBBBP    dBP      dBBBBP dBBBBBB  dBP       dBP\n"""
    Welcome = """
    [bold magenta] Welcome to [/bold magenta][bold cyan]Ret2GPT[/bold cyan]
    [bold magenta] 欢迎来到 [/bold magenta][bold cyan]Ret2GPT[/bold cyan]
    """
    Intro = """
    DEVLOPE BY RETR0
    ENJOY YOUR HACKING!
    """
    
    hinter = """
    \n[medium_orchid]HINT: USE [medium_purple3]/help[/medium_purple3] TO CHECK FOR COMMANDS\nUSE [medium_purple3]/[command][/medium_purple3] TO USE COMMANDS[/medium_orchid]
    """
    
    # header_table = Table.grid(padding=(0, 1))
    # header_table.add_column(justify="center", no_wrap=True)
    # header_table.add_row(gradient_text(header.strip(), "#614385", "#516395"))
    
    # console.print(header_table,justify="center")
    console.print(Welcome, justify="center")
    # console.print(Intro, justify="center")
    console.print(gradient_text(Intro, "#614385", "#516395"),justify="center")
    console.print(hinter, justify="center")

def loop():
    from rich.prompt import Prompt
    import check_for_command
    path = retdec.retdec()
    with console.capture() as capture:
        loader = pwnchain.loading(path)
        created_qa = pwnchain.create_qa(loader)
    
    while True:
        text_query = console.input(f"\n[bold light_steel_blue1] What do you want to ask about [/bold light_steel_blue1][bold plum2]{path}[/bold plum2] >>> ")
        if text_query == "/help":
            check_for_command.help()
        else:
            text_query = check_for_command.check(text_query)
            text_query = pwnchain.build_prompt_for_qa(text_query)
            with console.status("Generating output...", spinner="monkey"):
                answer = pwnchain.query_about_files(qa=created_qa,query=text_query)
            text = f"\n[bold medium_purple1]:snowboarder: PwnGPT[/bold medium_purple1]:[sky_blue2] {answer}[/sky_blue2]"
            log_console.print(text)
        
def main():
    intro()
    loop()