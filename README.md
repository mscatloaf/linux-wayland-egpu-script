# linux-wayland-egpu-script
 
A script I created to get my egpu working on linux. switch-to-egpu.sh sets the egpu as the "boot_vga" device improving performance and making DRI_PRIME unnecessary. switch-back-to-igpu.sh undoes what the first script does, you can accomplish the same thing by rebooting, but this script may save you some time.

Displays attached to the iGPU may still work, but I recommend going to your monitor settings and turning them off for maximum performance and stability.

You must modify the scripts to change the pci device paths to ones which match your gpu.

If you want a more user friendly/automated script, you might want to try https://github.com/ewagner12/all-ways-egpu
