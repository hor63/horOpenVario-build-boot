# setenv bootm_boot_mode sec
setenv bootargs console=tty0 root=/dev/ram0 consoleblank=0 panic=10
ext2load mmc 0 0x43000000 sun7i-a20-cubieboard2.dtb
ext2load mmc 0 0x45000000 uMyinitrd
ext2load mmc 0 0x41000000 zImage
bootz 0x41000000 0x45000000 0x43000000 
