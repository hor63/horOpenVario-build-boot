setenv bootm_boot_mode sec
# setenv bootargs console=tty0 root=/dev/mmcblk0p2 rootwait panic=10
setenv bootargs console=tty0 root=/dev/mmcblk0p2 rootwait consoleblank=0 panic=10
ext2load mmc 0 0x43000000 openvario.bin
ext2load mmc 0 0x55000000 uMyinitrd
ext2load mmc 0 0x41000000 uImage
bootm 0x41000000 0x55000000
