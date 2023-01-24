#!/bin/sh

ARCH=x86_64
REPO=https://alpha.de.repo.voidlinux.org/current
DIR="$(basename $PWD)"
UBLOCK_URL='https://addons.mozilla.org/firefox/downloads/file/4047353/ublock_origin-1.46.0.xpi'
SERVICES="agetty-tty1 agetty-tty2 agetty-tty3 uuidd udevd dbus polkitd rtkit ntpd lightdm NetworkManager cupsd saned"
cd ..
curl $UBLOCK_URL -o ${DIR}'/includedir/usr/lib/firefox/browser/extensions/uBlock0@raymondhill.net.xpi'
./mklive.sh $@ \
    -a ${ARCH} \
    -r "${REPO}/nonfree" \
    -p "$(grep '^[^#].' ${DIR}/lxqt-dot.packages)" \
    -T "Void Linux LXQt" \
    -I "${DIR}/includedir" \
    -o "${DIR}/lxqt-dotfiles-${ARCH}.iso" \
    -S "${SERVICES}"
cd -
