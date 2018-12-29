#!/bin/bash
# One-click kbuild script
# Dec 29, 2018
# daveti

# Clear the build dir
echo "CLEARING..."
sudo ./removeAllKernelSources.sh

# Get the kernel source
echo "GETTING SRC..."
sudo ./getKernelSources.sh

# Build the kernel
echo "BUILDING..."
sudo ./scripts/makeKernel.sh

# Install the image
echo "IMAGING..."
sudo ./copyImage.sh

echo "DONE"
