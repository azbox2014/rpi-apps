#!/bin/sh
# description:	initial nfs server environment
# author:	archie2016

echo "http://10.0.1.6/alpine/v3.5/main" > /etc/apk/repositories
echo "http://nl.alpinelinux.org/alpine/v3.5/community/" >> /etc/apk/repositories

# update and install nfs-utils(runit: UNIX init schema)
apk update && apk --update upgrade && apk add runit nfs-utils

# clean
rm -rf /var/cache/apk/*

# set flag
touch /etc/set

