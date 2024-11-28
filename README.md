# linux-wayland-egpu-script
 
A script I created to get my egpu working on linux. switch-to-egpu.sh sets the egpu as the "boot_vga" device improving performance and making DRI_PRIME unnecessary. switch-back-to-igpu.sh tries to undo what the switching script does, but it usually leaves the system in an unusable state or locked up, in most cases it is better to reboot or shutdown.

Displays attached to the iGPU may still work, but I recommend going to your monitor settings and turning them off for maximum performance and stability.

You must modify the scripts to change the pci device paths to ones which match your gpu.

This script is not dependent on systemd, but if you use a different init system you will have to change the systemctl commands to match your init system.

If you want a more user friendly/automated script, you might want to try https://github.com/ewagner12/all-ways-egpu
