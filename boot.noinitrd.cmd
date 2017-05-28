setenv bootm_boot_mode sec
setenv bootargs console=tty0 root=/dev/mmcblk0p2 rootwait panic=10 consoleblank=0
ext2load mmc 0 0x43000000 script.bin
ext2load mmc 0 0x41000000 uImage
bootm 0x41000000
