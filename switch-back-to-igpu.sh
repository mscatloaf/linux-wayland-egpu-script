#!/bin/bash

IGPU_PATH="/sys/bus/pci/devices/0000:00:02.0"
EGPU_PATH="/sys/bus/pci/devices/0000:03:00.0"
SCRIPT_PATH=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

umount $IGPU_PATH/boot_vga
umount $EGPU_PATH/boot_vga
sudo systemctl restart display-manager


