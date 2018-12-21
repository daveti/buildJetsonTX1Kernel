#!/bin/bash
apt-add-repository universe
apt-get update
apt-get install qt5-default pkg-config -y
#cd /usr/src
cd ~daveti/home2/l4t
wget -N http://developer.download.nvidia.com/embedded/L4T/r28_Release_v2.0/GA/BSP/tx1_sources.tbz2
echo "Expanding sources, please wait"
tar -xvf tx1_sources.tbz2 public_release/kernel_src.tbz2
tar -xvf public_release/kernel_src.tbz2
# Space is tight; get rid of the compressed kernel source
rm -r public_release
cd kernel/kernel-4.4
zcat /proc/config.gz > .config
make xconfig

