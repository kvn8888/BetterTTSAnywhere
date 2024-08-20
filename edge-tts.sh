#!/bin/bash

# Get text from clipboard
text=$(cat)

# Specify the output file
# output_file="output.mp3"

# Use edge-tts to generate the audio file from clipboard text
/Library/Frameworks/Python.framework/Versions/3.10/bin/edge-tts --voice en-US-AvaNeural --text "$text" --write-media /tmp/output.mp3

# Check if the audio file was created successfully
if [ -f /Users/kevinc/Documents/TTS/output.mp3 ]; then
    # Play the generated audio file
    # afplay /tmp/output.mp3
    # Remove the output file after playback
    #rm "$output_file"
else
    echo "Error: Failed to create the audio file."
fi


