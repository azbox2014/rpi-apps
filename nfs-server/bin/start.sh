#!/bin/sh
# description:	start nfs server
# author:	archie2016

# set environment
[ -e /etc/set ] || /apps/bin/init.sh

# start service
rc-service nfs start

sh
