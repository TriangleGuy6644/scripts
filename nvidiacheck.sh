#!/bin/bash

# Check if nvidia-smi command exists
if ! command -v nvidia-smi &> /dev/null; then
    echo "Your drivers are not installed."
    exit 1
fi

# Try running nvidia-smi to see if the driver and GPU are working
if nvidia-smi &> /dev/null; then
    echo "Your drivers are installed!"
else
    echo "Your drivers are not installed."
    exit 1
fi

