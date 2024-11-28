#!/bin/bash

IGPU_PCI_ID="0000:00:02.0"
EGPU_PCI_ID="0000:2e:00.0"

IGPU_PATH="/sys/bus/pci/devices/$IGPU_PCI_ID"
EGPU_PATH="/sys/bus/pci/devices/$EGPU_PCI_ID"


SCRIPT_PATH=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

#undo what the switch script did
sudo umount $IGPU_PATH/boot_vga
sudo umount $EGPU_PATH/boot_vga
sleep 0.5

#unbind the egpu
echo -n $EGPU_PCI_ID | sudo tee /sys/bus/pci/drivers/amdgpu/unbind
sudo rmmod amdgpu #this line is optional and should probably be commented out on amd laptops
sudo systemctl restart display-manager


