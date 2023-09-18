# Setting Up a Minimal FreeDOS Installation on QEMU

## Steps

1. qemu-img create dos.img 80M
2. qemu-system-i386 -m 4 -k en-us -rtc base=localtime -device cirrus-vga -display gtk -hda dos.img -fda FLOPPY.img -boot order=a
3. qemu-system-i386 -m 4 -k en-us -rtc base=localtime -device cirrus-vga -display gtk -hda dos.img -fda FLOPPY.img -boot order=a
