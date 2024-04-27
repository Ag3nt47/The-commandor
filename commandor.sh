#!/bin/bash
    figlet -c -f slant "Hey Commandor !" | lolcat




while true; do
    # Ask the user for input

    
    read -p "Your command *_* : " user_input 
  
    # Break the loop if the user enters "exit"
    if [ "$user_input" == "exit" ]; then
        echo "Goodbye!"
        break
    fi

    if [ "$user_input" == "clear" ]; then
        clear
        bash chat.sh
        break
    fi

    # Run the curl command with the user input
    while true; do
        response=$(curl -s -H 'Content-Type: application/json' -d "{\"contents\":[{\"parts\":[{\"text\":\" ( make me a bash scripting commands that will solve this issue:$user_input (write only the code no other text , on BASH format not markdown    ) \"}]}]}" -X POST 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=******You-bard-API-key******' | jq -r '.candidates[0].content.parts[0].text') 
        
        if [ "$response" != "null" ]; then
            break
        fi
    done

    # Print the response
    echo "$response" | tee fix.sh
    chmod +x fix.sh
    echo -e 'We are about to run this command' | lolcat


    cat fix.sh

    bash fix.sh
   
done
