# linux-wayland-egpu-script
 
A script I created to get my egpu working on linux. switch-to-egpu.sh sets the egpu as the "boot_vga" device improving performance and making DRI_PRIME unnecessary. switch-back-to-igpu.sh undoes the changes to boot_vga and tries to unbind the egpu and remove the graphics driver (assuming you have an Intel iGPU and amd eGPU like I do, if not you will need to modify the script to make it unbind your eGPU.

It is possible that your desktop session will crash before execution is finished, especially with switch-back-to-igpu.sh, if the scripts work when you run them from a tty, but not from inside your desktop environment, this is probably whats happening. A good solution would be to create a systemd service that runs the scripts. 

Displays attached to the iGPU may still work, but I recommend going to your monitor settings and turning them off for maximum performance and stability.

You must modify the scripts to change the pci device paths to ones which match your gpu.

This script is not dependent on systemd, but if you use a different init system you will have to change the systemctl commands to match your init system.

If you want a more user friendly/automated script, you might want to try https://github.com/ewagner12/all-ways-egpu
