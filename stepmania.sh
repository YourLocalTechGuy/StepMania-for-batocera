#!/bin/bash

# Define directories
STEP_LIB_DIR="/userdata/roms/ports/stepmania"
PREFS="/userdata/system/.stepmania-5.1/Save/Preferences.ini"

export LD_LIBRARY_PATH=$STEP_LIB_DIR:$LD_LIBRARY_PATH

# Patch Preferences.ini
if [ -f "$PREFS" ]; then
    sed -i 's/^SoundDevice=.*/SoundDevice=plughw:1.0/' "$PREFS"
    sed -i 's/^SoundDrivers=.*/SoundDrivers=pulse/' "$PREFS"
fi

# Launch StepMania
cd "$STEP_LIB_DIR" && ./stepmania