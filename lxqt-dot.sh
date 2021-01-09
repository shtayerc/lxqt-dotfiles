#!/bin/sh

ARCH=x86_64
REPO=https://alpha.de.repo.voidlinux.org/current
DIR="$(basename $PWD)"
cd ..
./mklive.sh $@ \
    -a ${ARCH} \
    -r "${REPO}/nonfree" \
    -p "$(grep '^[^#].' ${DIR}/lxqt-dot.packages)" \
    -T "Void Linux LXQt" \
    -I "${DIR}/includedir" \
    -o "${DIR}/lxqt-dotfiles-${ARCH}.iso"
cd -
