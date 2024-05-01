# Motorola Moto G30 (caprip) Ubuntu Touch unofficial port [WIP]

## Ubuntu 20.04 Focal
Not usable rn because of no sound. \
Everising else just fine.

## Current state:
fingerprint sensor (not tested but mentioned in settings)\
gps (not tested but mentioned in settings)

ril (use "service ofono reset" in terminal)\
audio (only BT audio)

no flashlight\
no nfc\
no HVAcceleration

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
