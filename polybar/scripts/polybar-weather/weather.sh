#! /bin/sh

# Define the colors
hot="#eb4034"
mid="#eb7d34"
cold="#3499eb"
frz="#d1eaff"

# Get the weather
temp=$(curl -s https://wttr.in/Perth?format=%t)
temp_num=$(echo "$temp" | sed 's/°C//')

if (( temp_num >= 0 && temp_num <= 8 )); then
  echo "%{F$frz} $temp"
elif (( temp_num >= 9 && temp_num <= 16 )); then
  echo "%{F$cold} $temp"
elif (( temp_num >= 17 && temp_num <= 23 )); then
  echo "%{F$mid} $temp"
elif (( temp_num >= 23 && temp_num <= 100 )); then
  echo "%{F$hot} $temp"
else
  echo "%{F#ffffff} $temp"
fi
