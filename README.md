# Motorola Moto G30 (caprip) Ubuntu Touch unofficial port [WIP]

## Ubuntu 20.04 Focal
Not usable rn because of no sound. \
Everising else just fine.

## Current state:
no audio (only Bluetooth)\
no gps

?? nfc (where itmust be?)\
?? HVAcceleration (youtube in browser looks norm)

adb (not stable. use "touch /data/.force_adb" from recovery)
## Building:
./build.sh -b workdir\
./build/prepare-fake-ota.sh out/device_caprip_usrmerge.tar.xz ota\
./build/system-image-from-ota.sh ota/ubuntu_command images

## Installing:
All your firmware files are in 'images/' folder.\
'boot.img' and 'dtbo.img' flash as it named.\
'system.img' not needed.\
'rootfs.img' must be placed as '/data/ubuntu.img'..\
one problem is that /data partition must be decripted, but you can always just 'format data' from custom recovery and:\
adb push rootfs.img /data/ubuntu.img
