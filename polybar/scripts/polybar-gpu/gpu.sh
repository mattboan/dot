#! /bin/sh

# Get the GPU temp
temp=$(cat /sys/class/drm/card0/device/hwmon/hwmon1/temp1_input)

# Convert to degrees
temp_num=$(echo "$temp" | sed 's/000//')

# Get the GPU usage
usage=$(cat /sys/class/drm/card0/device/gpu_busy_percent)

# Append the percentage sign
usage_num=$(echo "$usage" | sed 's/%//')

# Define the colors
hot="#eb4034"
mid="#eb7d34"
cold="#3499eb"

if (( temp_num >= 0 && temp_num <= 60 )); then
  echo "GPU %{F$cold} $temp_num°C"
elif (( temp_num >= 61 && temp_num <= 70 )); then
  echo "GPU %{F$mid} $temp_num°C"
elif (( temp_num >= 71 && temp_num <= 100 )); then
  echo "GPU %{F$hot} $temp_num°C"
else
  echo "GPU %{F#ffffff} $temp_num°C"
fi

