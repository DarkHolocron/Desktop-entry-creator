#!/bin/bash
read -p "Enter file name(without .desktop): " file_name
read -p "Enter application name: " name
read -p "Enter path to executable file: " exec
read -p "Enter path to icon file: " icon
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
