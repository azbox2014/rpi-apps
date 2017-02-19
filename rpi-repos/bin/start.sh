#!/bin/bash
# description:	sync raspbian repository

[ -z "$(which apt-mirror)" ] && {
    apt update && apt install -y apt-mirror
    mkdir -p /data/logs
}

/usr/bin/apt-mirror /data/conf/mirror.list &> /data/logs/raspbian.log
