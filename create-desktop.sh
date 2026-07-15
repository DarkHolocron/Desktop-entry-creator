#!/bin/bash
read -p "Enter file name(without .desktop): " file_name
while [[ -z "$file_name" ]] 
do 
    read -p "The file name cannot be empty. Please try again: " file_name
done
read -p "Enter application name: " name
while [[ -z "$name" ]] 
do
    read -p "The name of application cannot be empty. Please try again: " name
done
read -p "Enter path to executable file: " exec
while [[ -z "$exec" ]]
do
    read -p "The path to executable file cannot be empty. Please try again: " exec
done
read -p "Enter path to icon file: " icon
while [[ -z "$icon" ]]
do
    read -p "The path to icon cannot be empty. Please try again: " icon
done
desktop_file="${file_name%.*}.desktop"
echo "[Desktop Entry]" > "$desktop_file"
echo "Version=1.1" >> "$desktop_file"
echo "Type=Application" >> "$desktop_file"
echo "Name=\"$name\"" >> "$desktop_file"
echo "NoDisplay=false" >> "$desktop_file"
echo "Icon=\"$icon\"" >> "$desktop_file"
echo "Exec=\"$exec\"" >> "$desktop_file"
echo "Terminal=false" >> "$desktop_file"
echo "Categories=Development;" >> "$desktop_file"
chmod +x "$desktop_file"
sudo mv "$desktop_file" /usr/share/applications
echo "Done! Desktop file created successfully"
