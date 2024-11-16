#!/bin/bash

# Define the directory where StepMania libs are stored
STEP_LIB_DIR="/userdata/roms/ports/stepmania"

# Create symlinks for the required libraries
ln -sf "$STEP_LIB_DIR/libjpeg.so.62.3.0" "/lib/libjpeg.so.62"
ln -sf "$STEP_LIB_DIR/libpcre.so.3.13.3" "/lib/libpcre.so.3"
ln -sf "$STEP_LIB_DIR/libtommath.so.1.2.0" "/lib/libtommath.so.1"
ln -sf "$STEP_LIB_DIR/libjack.so.0.1.0" "/lib/libjack.so.0"

# Change to the StepMania directory and run the executable
cd "$STEP_LIB_DIR" && ./stepmania
