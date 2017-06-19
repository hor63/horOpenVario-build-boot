setenv bootm_boot_mode sec
setenv bootargs console=tty0 root=/dev/mmcblk0p2 rootwait hdmi.audio=EDID:0 disp.screen0_output_mode=EDID:1920x1080p-60 consoleblank=0
ext2load mmc 0 0x43000000 script.bin.vga
ext2load mmc 0 0x55000000 uInitrdNoinst
ext2load mmc 0 0x41000000 uImage
bootm 0x41000000 0x55000000
