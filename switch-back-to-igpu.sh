#!/bin/bash

IGPU_PATH="/sys/bus/pci/devices/0000:00:02.0"
EGPU_PATH="/sys/bus/pci/devices/0000:03:00.0"
SCRIPT_PATH=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo WARNING, this script is likely to leave your system in an unusable state which requires a forced power off
echo SAVE ANY UNSAVED WORK BEFORE RUNNING THIS SCRIPT
read -p "press ENTER to continue"

sudo umount $IGPU_PATH/boot_vga
sudo umount $EGPU_PATH/boot_vga
sudo systemctl restart display-manager


