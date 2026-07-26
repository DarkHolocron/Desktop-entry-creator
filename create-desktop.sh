#!/bin/bash
read -p "Enter file name (without .desktop): " file_name
while [[ -z "$file_name" ]]; do
    read -p "File name cannot be empty. Please try again: " file_name
done
read -p "Enter application name: " name
while [[ -z "$name" ]];do 
    read -p "Application name cannot be empty. Please try again: " name
done
read -p "Enter path to executable file: " exec
while [[ -z "$exec" ]]; do
    read -p "Executable path cannot be empty. Please try again: " exec
done
read -p "Enter path to icon file: " icon
while [[ -z "$icon" ]]; do
    read -p "Icon path cannot be empty. Please try again: " icon
done
while true; do
    read -p "Show application in menu? (yes/no, Enter = yes): " show_in_menu
    if [[ -z "$show_in_menu" || "$show_in_menu" == "yes" ]]; then 
        show_in_menu="false"
        break
    elif [[ "$show_in_menu" == "no" ]]; then   
        show_in_menu="true"
        break
    else
        echo "Error. Try again"
    fi
    done
while true; do
    read -p "Run in terminal? (yes/no, Enter = no): " terminal
    if [[ -z "$terminal" || "$terminal" == "no" ]]; then 
        terminal="false"
        break
    elif [[ "$terminal" == "yes" ]]; then   
        terminal="true"
        break
    else
        echo "Error. Try again"
    fi
    done
read -p "Enter category (Enter = Development): " category
if [[ -z "$category" ]]; then
    category="Development"
    fi
desktop_file="${file_name%.*}.desktop"
echo "[Desktop Entry]" > "$desktop_file"
echo "Version=1.1" >> "$desktop_file"
echo "Type=Application" >> "$desktop_file"
echo "Name=\"$name\"" >> "$desktop_file"
echo "NoDisplay=$show_in_menu" >> "$desktop_file"
echo "Icon=\"$icon\"" >> "$desktop_file"
echo "Exec=\"$exec\"" >> "$desktop_file"
echo "Terminal=$terminal" >> "$desktop_file"
echo "Categories=$category;" >> "$desktop_file"
chmod +x "$desktop_file"
sudo mv "$desktop_file" /usr/share/applications
echo "Done! Desktop file created successfully"
