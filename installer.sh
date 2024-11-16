#!/bin/bash

# Check if the architecture is ARM64
if [ "$(uname -m)" == "aarch64" ]; then
    echo "Installing StepMaina..."
    cd /userdata/roms/ports/
    wget https://github.com/YourLocalTechGuy/StepMania-for-batocera/archive/refs/heads/main.zip -O StepMania-for-batocera.zip 
# downloads a pre compiled version i made myself
    unzip StepMania-for-batocera.zip
    mv StepMania-for-batocera-main/* .
    rm StepMaina-for-batocera.zip
    rm -R StepMania-for-batocera-main/
# code above sets up the file structure for ti to work
    echo "Installed successfully! , stepmaina should now be available in the Ports section in batocera!" 
    rm  installer.sh

else
    echo "This version of StepMaina only works with a Raspberry pi 5 or a Raspberry Pi 4"
    exit 1
fi
