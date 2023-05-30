#!/bin/bash

IP_ADDRESS="192.168.0.1"  # Replace with the IP address you want to ping
SOUND_FILE="/path/to/sound.wav"  # Replace with the path to your sound file
SLEEPTIME="30" # How much time between tests. Default 30 seconds.

while true; do
  if ping -c 1 "$IP_ADDRESS" >/dev/null; then
    echo "Response Received!"
    paplay "$SOUND_FILE"  # Play the sound file using the 'paplay' command
  else
    echo "No Connection to Host!"
  fi
  sleep "$SLEEPTIME"
done
