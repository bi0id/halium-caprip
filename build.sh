#!/bin/bash
set -xe

#[ -d build ] || git clone https://gitlab.com/ubports/community-ports/halium-generic-adaptation-build-tools -b main build

# Unpack python3-evdev to overlay until it is added to rootfs
#wget http://ports.ubuntu.com/ubuntu-ports/pool/universe/p/python-evdev/python3-evdev_0.4.7-0ubuntu4_arm64.deb
#dpkg-deb -x python3-evdev_0.4.7-0ubuntu4_arm64.deb "overlay/system"

./build/build.sh "$@"
