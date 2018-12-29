#!/bin/bash
# One-click kbuild script
# Dec 29, 2018
# daveti

# Clear the build dir
echo "CLEARING..."
sudo ./removeAllKernelSources.sh
echo "================================"

# Get the kernel source
echo "GETTING SRC..."
sudo ./getKernelSources.sh
echo "================================"

# Build the kernel
echo "BUILDING..."
sudo ./scripts/makeKernel.sh
echo "================================"

# Install the image
echo "IMAGING..."
sudo ./copyImage.sh
echo "================================"
echo "DONE"
