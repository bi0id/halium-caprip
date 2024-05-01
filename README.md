# Motorola Moto G30 (caprip) Ubuntu Touch unofficial port [WIP]

## Ubuntu 16.04 Xenial
In my case its stucks on plymouth.. but with sound :)\
Maby problem in firmware version - i use latest A11.\

Another problem is:\
"Ubuntu 16.04-based Ubuntu Touch has been long deprecated and unmaintained"

## Current state:
It must be everising works, except nfc & HWAcceleration 

## Building:
./build.sh -b workdir\
./build/prepare-fake-ota.sh out/device_caprip_usrmerge.tar.xz ota\
./build/system-image-from-ota.sh ota/ubuntu_command images\

## Installing:
All your firmware files are in 'images/' folder.\
'boot.img' and 'dtbo.img' flash as it named.\
'system.img' not needed.\
'rootfs.img' must be placed as '/data/ubuntu.img'..\
one problem is that /data partition must be decripted, but you can always just 'format data' from custom recovery and:\
adb push rootfs.img /data/ubuntu.img
