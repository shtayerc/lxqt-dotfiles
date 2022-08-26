#!/bin/sh

ARCH=x86_64
REPO=https://alpha.de.repo.voidlinux.org/current
DIR="$(basename $PWD)"
UBLOCK_URL='https://addons.mozilla.org/firefox/downloads/file/3989793/ublock_origin-1.44.0.xpi'
cd ..
curl $UBLOCK_URL -o ${DIR}'/includedir/usr/lib/firefox/browser/extensions/uBlock0@raymondhill.net.xpi'
./mklive.sh $@ \
    -a ${ARCH} \
    -r "${REPO}/nonfree" \
    -p "$(grep '^[^#].' ${DIR}/lxqt-dot.packages)" \
    -T "Void Linux LXQt" \
    -I "${DIR}/includedir" \
    -o "${DIR}/lxqt-dotfiles-${ARCH}.iso"
cd -
