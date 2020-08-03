#!/bin/sh
[ $# -lt 1 ] && echo "Username required" && exit 1
chown -R $1:$1 /home/$1/.config
chown -R $1:$1 /home/$1/.local
