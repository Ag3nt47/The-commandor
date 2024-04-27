# Chat Commandor
![cx](https://github.com/Ag3nt47/The-commandor/assets/65457219/c1365636-5296-41d4-8d66-3df12dbc46e4)

## Overview
Chat Commandor is a simple command-line tool designed to interactively assist users with executing bash commands. It utilizes the Bard API to generate bash scripting commands based on user input.

## Features
- Interactive command-line interface
- Utilizes the Bard API to generate bash scripting solutions
- Executes generated bash commands directly from the tool
- Supports basic functionalities like clearing the screen and exiting the tool

## Prerequisites
- Bash shell environment
- curl command-line tool
- jq JSON processor
- figlet and lolcat for ASCII art and coloring (optional)

## Installation
1. Clone the repository or download the chat.sh file.
2. Ensure you have the necessary dependencies installed.
3. Make the script executable by running: `chmod +x chat.sh`

## Usage
1. Run the script by executing: `./chat.sh`
2. Upon running, the tool will greet you with an ASCII art message.
3. Enter your desired command when prompted with "Your command *_* : ".
4. The tool will generate a bash script based on your input using the Bard API.
5. Review the generated bash script before execution.
6. Confirm execution by pressing Enter.
7. To clear the screen, enter "clear" as your command.
8. To exit the tool, enter "exit" as your command.

## Example
```bash
./chat.sh
