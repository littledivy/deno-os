cd boot
find . -print0 | cpio --null --create --verbose --format=newc > ../initramfs
cd ..
qemu-system-x86_64 -m 1G -kernel vmlinuz -initrd initramfs -append "vga=773 splash loglevel=4"
